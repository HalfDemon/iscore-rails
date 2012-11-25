require 'spec_helper'

describe "anomalies/new" do
  before(:each) do
    assign(:anomalie, stub_model(Anomalie,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new anomalie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => anomalies_path, :method => "post" do
      assert_select "input#anomalie_name", :name => "anomalie[name]"
      assert_select "textarea#anomalie_description", :name => "anomalie[description]"
    end
  end
end
