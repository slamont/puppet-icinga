source 'https://rubygems.org'
puppetversion = ENV.key?('PUPPET_VERSION') ? "= #{ENV['PUPPET_VERSION']}" : ">= 3.0"

gem 'rake'

group :development do
  gem 'puppet', puppetversion
end

group :test do
  gem 'rspec'
  gem 'rspec-puppet'
  gem 'rspec-hiera-puppet'
  gem 'rcov'
  gem 'puppetlabs_spec_helper'
  gem 'puppet-lint'
  gem 'puppet-profiler'
  gem 'ci_reporter'
end
