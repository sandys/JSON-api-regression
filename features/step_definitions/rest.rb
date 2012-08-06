#Given /^I post to (.*) with (.*)$/ do |url,json_data|
Given /^I post to "(.*?)" with:$/ do |arg1, string|
  begin
    RestClient.post url, json_data, :content_type => :json, :accepts => :json
  rescue => e
    @aruba_exception = e
  end
end

When /^I visit "(.*?)"$/ do |arg1|
  visit arg1
end
