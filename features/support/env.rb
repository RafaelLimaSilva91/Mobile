require 'appium_lib'
require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'
require 'faker'
require_relative 'utils.rb'
include RSpec::Matchers

caps = YAML.load(File.read(File.join(File.dirname(__FILE__), 'capabilities.yml')))
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
