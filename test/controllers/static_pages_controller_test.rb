require "test_helper"

describe StaticPagesController do
  it "gets home" do
    get :home
    must_respond_with :success
  end
end
