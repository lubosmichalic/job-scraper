require 'simplecov'
require 'simplecov-console'

RSpec.configure do |config|
  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(SimpleCov::Formatter::Console)
  SimpleCov.start

end
