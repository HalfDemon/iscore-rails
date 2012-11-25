require 'spec_helper'

describe "anomalies/index" do
  before(:each) do
    assign(:anomalies, [
      stub_model(Anomaly,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(Anomaly,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of anomalies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
