source 'https://rubygems.org'

gem 'acts_as_list'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'carrierwave'
gem 'jquery-rails'
gem 'pg'
gem 'rails', '3.2.3'
gem 'rmagick'
gem 'unicorn', groups: [:staging, :production]

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier',     '>= 1.0.3'
end

group :development, :test do
  gem 'cucumber-rails', require: false
  gem 'rspec-rails'
end

group :test do
  gem 'capybara-webkit'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'guard-cucumber'
  gem 'guard-pow'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'spork'
  gem 'vcr'
  gem 'webmock'
end

group :development do
  gem 'capistrano'
  gem 'capistrano-ext'
end
