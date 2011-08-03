require 'spec_helper'

describe Happening do

  def reset_happening(options = {})
    @valid_attributes = {
      :id => 1,
      :title => "RSpec is great for testing too"
    }

    @happening.destroy! if @happening
    @happening = Happening.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_happening
  end

  context "validations" do
    
    it "rejects empty title" do
      Happening.new(@valid_attributes.merge(:title => "")).should_not be_valid
    end

    it "rejects non unique title" do
      # as one gets created before each spec by reset_happening
      Happening.new(@valid_attributes).should_not be_valid
    end
    
  end

end