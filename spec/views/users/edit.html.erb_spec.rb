require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :username => "MyString",
      :name => "MyString",
      :site => nil,
      :password_digest => "MyString",
      :admin => false,
      :team => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_username", :name => "user[username]"
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_site", :name => "user[site]"
      assert_select "input#user_password_digest", :name => "user[password_digest]"
      assert_select "input#user_admin", :name => "user[admin]"
      assert_select "input#user_team", :name => "user[team]"
    end
  end
end
