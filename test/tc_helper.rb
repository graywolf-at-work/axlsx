$LOAD_PATH.unshift "#{File.dirname(__FILE__)}/../lib"
require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
  add_filter "/vendor/"
end

require 'minitest/autorun'
module Minitest::Assertions 
  def assert_nothing_raised(*)
    yield
  end
end

require "timecop"
require "axlsx.rb"
