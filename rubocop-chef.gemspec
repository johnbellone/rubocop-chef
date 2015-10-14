$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'rubocop/chef/version'

Gem::Specification.new do |spec|
  spec.name = 'rubocop-rspec'
  spec.summary = 'Code style checking for Chef cookbooks.'
  spec.description = <<-EOH
Code style checking for Chef cookbooks.
A plugin for the RuboCop code style enforcing & linting tool.
EOH
  spec.homepage = 'http://github.com/johnbellone/rubocop-chef'
  spec.authors = ['John Bellone']
  spec.email = ['jbellone@bellone.us']
  spec.licenses = ['Apache 2.0']

  spec.version = RuboCop::Chef::Version::STRING
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 1.9.3'

  spec.require_paths = ['lib']
  spec.files = Dir[
    '{config,lib,spec}/**/*',
    '*.md',
    '*.gemspec',
    'Gemfile',
    'Rakefile'
  ]
  spec.test_files = spec.files.grep(%r{^spec/})
  spec.extra_rdoc_files = ['README.md']

  spec.add_development_dependency('rubocop', '~> 0.31')
  spec.add_development_dependency('rake', '~> 10.1')
  spec.add_development_dependency('rspec', '~> 3.0')
  spec.add_development_dependency('simplecov', '~> 0.8')
end
