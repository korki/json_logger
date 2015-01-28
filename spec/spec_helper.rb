ENV['RACK_ENV'] = 'test'

require 'bundler'
require 'rubygems'

Bundler.require(:default, :test)
require 'rack/test'
require File.join(File.dirname(__FILE__), '..', 'lib', 'json_logger.rb')

RSpec.configure do |config|
  config.mock_framework = :rspec
  config.include Rack::Test::Methods
end
