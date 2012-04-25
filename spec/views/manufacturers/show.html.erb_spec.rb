require 'spec_helper'

describe "manufacturers/show" do
  before(:each) do
    @manufacturer = assign(:manufacturer, stub_model(Manufacturer,
      name: "Name",
      description: "MyText",
      web_site: "Web Site",
      support_site: "Support Site",
      position: 1,
      image: "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Web Site/)
    rendered.should match(/Support Site/)
    rendered.should match(/1/)
    rendered.should match(/Image/)
  end
end
