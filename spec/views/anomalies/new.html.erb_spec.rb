require 'spec_helper'

describe "anomalies/new" do
  before(:each) do
    assign(:anomaly, stub_model(Anomaly,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new anomaly form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => anomalies_path, :method => "post" do
      assert_select "input#anomaly_name", :name => "anomaly[name]"
      assert_select "textarea#anomaly_description", :name => "anomaly[description]"
    end
  end
end
