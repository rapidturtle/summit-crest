require "spec_helper"

describe Manufacturer do

  it "requires a name" do
    FactoryGirl.build(:manufacturer, name: "").should be_invalid
  end

  it "requires a description" do
    FactoryGirl.build(:manufacturer, description: "").should be_invalid
  end

end
