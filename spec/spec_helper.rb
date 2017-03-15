# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
require 'pry'
require 'simplecov'
require 'rspec'
SimpleCov.start
RSpec.configure do |config|
  config.filter_run_excluding broken: true
  config.order = 'random'
end
