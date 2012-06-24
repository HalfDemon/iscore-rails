require 'spec_helper'

describe "documents/new" do
  before(:each) do
    assign(:document, stub_model(Document,
      :type => "",
      :url => "MyString",
      :team_id => 1
    ).as_new_record)
  end

  it "renders new document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => documents_path, :method => "post" do
      assert_select "input#document_type", :name => "document[type]"
      assert_select "input#document_url", :name => "document[url]"
      assert_select "input#document_team_id", :name => "document[team_id]"
    end
  end
end
