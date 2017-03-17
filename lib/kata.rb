require 'watir'
require 'open-uri'
require 'nokogiri'
require 'fileutils'
URL = 'https://www.codewars.com/kata'.freeze
LANG = 'ruby'.freeze
WD_PATH = '/usr/lib/chromium-browser/libs/chromedriver'.freeze
ROOT = File.dirname(__FILE__).gsub('lib', '').freeze
::Selenium::WebDriver::Chrome.driver_path = WD_PATH
# Kata module used in rake tasks to generate katas file and spec pair.
#
# #generate method uses `lib/generator/*template.rb` files as base. It replaces
# function names and store new files in proper folders. If specfied kata
# parameter contains `/` uses as dir for level. By default all katas go to beta.
#
# #scrape method works the same (uses #generate method) but first it scrapes
# https://www.codewars.com site for kata description and store it in katas file.
module Kata
  class << self
  def generate(kata, desc = '')
    name, dir = *split_kata(kata)
    ['', '_spec'].each.collect do |temp|
      f = File.open("#{ROOT}/lib/generator/kata#{temp}_template.rb").read
      f.gsub!('kata_function', name)
      f.gsub!('kata_description', desc) unless desc.empty?
      kfile = "#{ROOT}/#{temp.tr('_', '')}/#{dir}/#{name}#{temp}.rb"
      File.open(kfile, 'w') do |file|
        file.write(f)
      end
    end
  end

  def scrape(kata)
    name, dir = *split_kata(kata)
    kata_url = [URL, kata.split('/')[1], LANG].join('/')
    generate(
      "#{dir}/#{name}",
      parse_description([
        "@url:#{kata_url}\n",
        get_description(kata_url)
      ].join)
    )
  end

  def split_kata(kata)
    name, dir = *kata.split('/').reverse
    dir ||= 'beta'
    [name.tr('-', '_'), dir]
  end

  def get_description(kata_url)
    browser = ::Watir::Browser.new
    browser.goto(kata_url)
    ::Nokogiri::HTML(browser.html).css('#description').text
  end

  def parse_description(desc)
    desc.lines.map do |line|
      line.gsub(/(.{1,78})(\s+|\Z)/, "\\1\n# ")
    end.join
  end
  end
end
