require 'capybara'
require 'capybara/cucumber'
require 'restclient'

#Given /^I post to (.*) with (.*)$/ do |url,json_data|
When /^I post to "(.*?)" with:$/ do |url, json_data|
  begin
    json = JSON.parse(json_data)
    reply = RestClient.post url, json_data, :content_type => :json, :accepts => :json
    @last_json = reply.body
    #post url, json_data
  end
end

When /^I get "(.*?)"$/ do |url|
  begin
    reply = RestClient.get url
    @last_json = reply.body
    #post url, json_data
  rescue => e
    puts e
  end
end

When /^I visit "(.*?)"$/ do |arg1|
  visit arg1
end

Given /^I send and accept JSON$/ do
  header 'Accept', 'application/json, text/javascript, *'
  header 'Content-Type', 'application/json'
end
