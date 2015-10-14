#!/usr/bin/env rake

require 'bundler/setup'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

namespace :style do
  desc 'Run Ruby style checks'
  RuboCop::RakeTask.new(:ruby)
end

desc 'Run all style checks'
task style: ['style:ruby']

desc 'Run unit tests'
RSpec::Core::RakeTask.new(:unit) do |t|
  t.pattern = 'test/spec/**{,/*/**}/*_spec.rb'
end

desc 'Run style & unit tests on Travis'
task travis: %w(style unit)

# Default
desc 'Run all tests.'
task default: %w(style unit)
