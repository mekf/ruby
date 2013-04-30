Given(/^I am not yet playing$/) do
end

When(/^I start the game$/) do 
  Codebreaker::Game.new.start
end

Then(/^I should see "(.*?)"$/) do |arg1|

end