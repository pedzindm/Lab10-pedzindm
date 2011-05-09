
Then /^I should see a fortune$/ do
 forutne = page.find(".fortune")
 fortune.text.should match /^\n.*\ns*$/
end