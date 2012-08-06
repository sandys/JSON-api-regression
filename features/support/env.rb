require 'aruba/cucumber'
require "json_spec/cucumber"
require 'capybara'
require 'capybara/cucumber'
require 'fileutils'
require 'rspec/expectations'
require 'yajl'

def last_json
  @last_json
end

