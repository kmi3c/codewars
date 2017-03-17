require_relative '../kata.rb'
namespace :kata do
  desc 'Generate empty kata example'
  task :generate, :kata_name do |_t, args|
    Kata.generate(args.kata_name)
  end
  desc 'Scrape kata example from url and generate files'
  task :scrape, :kata_url, :kata do |_t, args|
    Kata.scrape(args.kata_url)
  end
end
