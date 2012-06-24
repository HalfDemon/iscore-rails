require 'spec_helper'

describe "documents/edit" do
  before(:each) do
    @document = assign(:document, stub_model(Document,
      :type => "",
      :url => "MyString",
      :team_id => 1
    ))
  end

  it "renders the edit document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => documents_path(@document), :method => "post" do
      assert_select "input#document_type", :name => "document[type]"
      assert_select "input#document_url", :name => "document[url]"
      assert_select "input#document_team_id", :name => "document[team_id]"
    end
  end
end
