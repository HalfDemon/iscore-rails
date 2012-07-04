require 'spec_helper'

describe User do
	before	do
		@team = Site.new(name: "BlueSu" , number: 1, organization: "Iowa State Youth Tech Team" )
		@user = User.new(username: "Example_User", 
                     	 password: "foobar", site_id: @team.id, team: "Blue")
	end
  subject { @user }

  it { should respond_to(:username) }
  it { should respond_to(:password) }
  it { should respond_to(:team) }
  it { should respond_to(:email) }



  describe "accessible attributes" do
    it "should not allow access to admin" do
      expect do
        User.new(admin: true)
      end.should raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end
  end
end
