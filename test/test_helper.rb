require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"

# require "database_cleaner"
require "minitest/pride"
require "minitest/rails"
require "minitest/rails/capybara"

# Dir[File.expand_path("test/factories/**/*.rb")].each { |file| require file }

# DatabaseCleaner.strategy = :transaction

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  # fixtures :all

  # Add more helper methods to be used by all tests here...
end

# class Minitest::Test
#   def setup
#     DatabaseCleaner.start
#   end
#
#   def teardown
#     DatabaseCleaner.clean
#   end
# end
