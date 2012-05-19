source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'pg'
gem 'jquery-rails'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'unicorn', groups: [:staging, :production]

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
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
