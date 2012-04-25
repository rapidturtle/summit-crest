require 'spec_helper'

describe "manufacturers/index" do
  before(:each) do
    assign(:manufacturers, [
      stub_model(Manufacturer,
        name: "Name",
        description: "MyText",
        web_site: "Web Site",
        support_site: "Support Site",
        position: 1,
        image: "Image"
      ),
      stub_model(Manufacturer,
        name: "Name",
        description: "MyText",
        web_site: "Web Site",
        support_site: "Support Site",
        position: 1,
        image: "Image"
      )
    ])
  end

  it "renders a list of manufacturers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Web Site".to_s, count: 2
    assert_select "tr>td", text: "Support Site".to_s, count: 2
    assert_select "tr>td", text: 1.to_s, count: 2
    assert_select "tr>td", text: "Image".to_s, count: 2
  end
end
