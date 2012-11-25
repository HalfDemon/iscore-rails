require 'spec_helper'

describe "anomalies/show" do
  before(:each) do
    @anomalie = assign(:anomalie, stub_model(Anomalie,
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
