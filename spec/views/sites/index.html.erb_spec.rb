require 'spec_helper'

describe "sites/index" do
  before(:each) do
    assign(:sites, [
      stub_model(Site,
        :name => "Name",
        :organization => "Organization",
        :points => "0",
        :number => "1"
      ),
      stub_model(Site,
        :name => "Name",
        :organization => "Organization",
        :points => "",
        :number => "Number"
      )
    ])
  end

  it "renders a list of sites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td"
    assert_select "tr>td", text: "Site 1: Name".to_s
    assert_select "tr>td", text: "0".to_s
    assert_select "tr>td"
    assert_select "tr>td"
  end
end
