require 'spec_helper'

describe "anomalies/edit" do
  before(:each) do
    @anomaly = assign(:anomaly, stub_model(Anomaly,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit anomaly form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => anomalies_path(@anomaly), :method => "post" do
      assert_select "input#anomaly_name", :name => "anomaly[name]"
      assert_select "textarea#anomaly_description", :name => "anomaly[description]"
    end
  end
end
