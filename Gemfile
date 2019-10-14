source "https://rubygems.org"

gem "rails", "4.2.1"

gem "coffee-rails", "~> 4.1.0"
gem "font-awesome-sass"
gem "foundation-rails"
gem "jbuilder", "~> 2.0"
gem "jquery-rails"
# gem "pg"
gem "sass-rails", "~> 5.0"
gem "turbolinks"
gem "uglifier", ">= 1.3.0"

# bundle exec rake doc:rails generates the API under doc/api
gem "sdoc", "~> 0.4.0", group: :doc

group :development, :test do
  gem "byebug"
  gem "spring"
  gem "web-console", "~> 2.1"
end

group :development do
  gem "rack-livereload"
end

group :test do
  gem "codeclimate-test-reporter", require: nil
  # gem "database_cleaner"
  gem "guard-livereload"
  gem "guard-minitest"
  gem "guard-pow"
  # gem "minifacture"
  gem "minitest-rails"
  gem "minitest-rails-capybara"
  gem "rake"
end

group :production do
  gem "therubyracer", platforms: :ruby
  gem "unicorn"
end
