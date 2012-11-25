require 'spec_helper'

describe "anomalies/edit" do
  before(:each) do
    @anomalie = assign(:anomalie, stub_model(Anomalie,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit anomalie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => anomalies_path(@anomalie), :method => "post" do
      assert_select "input#anomalie_name", :name => "anomalie[name]"
      assert_select "textarea#anomalie_description", :name => "anomalie[description]"
    end
  end
end
