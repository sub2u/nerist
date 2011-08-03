require 'spec_helper'

describe Newse do

  def reset_newse(options = {})
    @valid_attributes = {
      :id => 1,
      :title => "RSpec is great for testing too"
    }

    @newse.destroy! if @newse
    @newse = Newse.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_newse
  end

  context "validations" do
    
    it "rejects empty title" do
      Newse.new(@valid_attributes.merge(:title => "")).should_not be_valid
    end

    it "rejects non unique title" do
      # as one gets created before each spec by reset_newse
      Newse.new(@valid_attributes).should_not be_valid
    end
    
  end

end