require 'spec_helper'

describe "manufacturers/new" do
  before(:each) do
    assign(:manufacturer, stub_model(Manufacturer,
      name: "MyString",
      description: "MyText",
      web_site: "MyString",
      support_site: "MyString",
      position: 1,
      image: "MyString"
    ).as_new_record)
  end

  it "renders new manufacturer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", action: manufacturers_path, method: "post" do
      assert_select "input#manufacturer_name", name: "manufacturer[name]"
      assert_select "textarea#manufacturer_description", name: "manufacturer[description]"
      assert_select "input#manufacturer_web_site", name: "manufacturer[web_site]"
      assert_select "input#manufacturer_support_site", name: "manufacturer[support_site]"
      assert_select "input#manufacturer_position", name: "manufacturer[position]"
      assert_select "input#manufacturer_image", name: "manufacturer[image]"
    end
  end
end
