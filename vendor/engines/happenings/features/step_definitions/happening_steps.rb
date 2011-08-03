Given /^I have no happenings$/ do
  Happening.delete_all
end

Given /^I (only )?have happenings titled "?([^\"]*)"?$/ do |only, titles|
  Happening.delete_all if only
  titles.split(', ').each do |title|
    Happening.create(:title => title)
  end
end

Then /^I should have ([0-9]+) happenings?$/ do |count|
  Happening.count.should == count.to_i
end
