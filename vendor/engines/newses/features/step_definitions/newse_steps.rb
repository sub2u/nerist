Given /^I have no newses$/ do
  Newse.delete_all
end

Given /^I (only )?have newses titled "?([^\"]*)"?$/ do |only, titles|
  Newse.delete_all if only
  titles.split(', ').each do |title|
    Newse.create(:title => title)
  end
end

Then /^I should have ([0-9]+) newses?$/ do |count|
  Newse.count.should == count.to_i
end
