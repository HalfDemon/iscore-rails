require 'spec_helper'

describe "flags/show" do
  before(:each) do
    @flag = assign(:flag, stub_model(Flag,
      :content => "MyText",
      :site => nil,
      :captured => false,
      :captured_flag => "MyText",
      :earned_back_points => "",
      :earned_back => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(/false/)
  end
end
