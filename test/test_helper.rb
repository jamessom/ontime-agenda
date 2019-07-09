# frozen_string_literal: true

if ENV.include? 'CODECOV_TOKEN'
  require 'simplecov'
  SimpleCov.start 'rails' do
    add_filter '/bin/'
    add_filter '/db/'
    add_filter '/app/channels/'
    add_filter '/app/mailers/'
    add_filter '/app/jobs/'
    add_filter '/.gems_ontime/'
    add_filter '/test/' # for minitest
  end

  require 'codecov'
  SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new([
                                                                    SimpleCov::Formatter::HTMLFormatter,
                                                                    SimpleCov::Formatter::Codecov
                                                                  ])
end

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  include Devise::Test::IntegrationHelpers
  include Warden::Test::Helpers

  def login(user)
    if integration_test?
      login_as user, scope: user
    else
      sign_in user
    end
  end
end
