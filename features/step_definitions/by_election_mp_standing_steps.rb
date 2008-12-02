Before do
  Given 'there is a postcode "AB101AA" in constituency "Aberdeen North"'
  Given 'there is an MP "Frank Doran" in constituency "Aberdeen North"'
end

Given /^I am on the Constituency edit page for "(.+)"$/ do |constituency_name|
  Given 'I am on the Front page'
  And "I search for \"#{constituency_name}\""
  And 'I follow "Edit"'
end

Then /^I should see the "(.+)" constituency page without "(.+)"$/ do |constituency_name, member_name|
  Then "I should see \"#{constituency_name}\""
  And "I should not see \"#{member_name}\""
end