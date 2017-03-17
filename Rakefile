require 'pry'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
load 'lib/tasks/kata.rake'

RuboCop::RakeTask.new
RSpec::Core::RakeTask.new(:spec)

task default: %w(spec)
