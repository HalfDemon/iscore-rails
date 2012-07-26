require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :username => "Username",
        :name => "Name",
        :site => nil,
        :password_digest => "Password Digest",
        :admin => false,
        :team => "Team"
      ),
      stub_model(User,
        :username => "Username",
        :name => "Name",
        :site => nil,
        :password_digest => "Password Digest",
        :admin => false,
        :team => "Team"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Team".to_s, :count => 2
  end
end
