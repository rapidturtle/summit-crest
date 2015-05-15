require "test_helper"

describe ApplicationHelper do
  describe "full_title" do
    it "formats a title without an argument" do
      full_title.must_equal "SummitCrest"
    end

    it "formats a title with an empty argument" do
      full_title("").must_equal "SummitCrest"
    end

    it "formats a title with an argument" do
      full_title("About Us").must_equal "SummitCrest / About Us"
    end
  end
end
