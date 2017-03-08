# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
require 'pry'
require 'simplecov'
require 'rspec'
SimpleCov.start
RSpec.configure do |config|
#  config.run_all_when_everything_filtered = false
#  config.filter_run :focus
  config.order = 'random'
end
