require "minitest_helper"

describe Manufacturer do

  it "requires a name" do
    FactoryGirl.build(:manufacturer, name: "").valid?.wont_equal true
  end

  it "requires a description" do
    FactoryGirl.build(:manufacturer, description: "").valid?.wont_equal true
  end

end
