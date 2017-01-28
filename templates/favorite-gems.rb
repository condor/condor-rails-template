require 'fileutils'

gem 'pry-rails'
gem 'slim-rails'

gem 'simplecov', group: :test, require: false
gem 'factory_girl_rails', group: %i(development test)

if yes?('Use rspec as your primary testing framework?')
  gem 'rspec-rails', group: :test 
  FileUtils.rm_r 'test'

  generate 'rspec:install'
end
