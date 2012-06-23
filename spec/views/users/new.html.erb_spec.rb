require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :username => "MyString",
      :name => "MyString",
      :site => nil,
      :password_digest => "MyString",
      :admin => false,
      :team => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_username", :name => "user[username]"
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_site", :name => "user[site]"
      assert_select "input#user_password_digest", :name => "user[password_digest]"
      assert_select "input#user_admin", :name => "user[admin]"
      assert_select "input#user_team", :name => "user[team]"
    end
  end
end