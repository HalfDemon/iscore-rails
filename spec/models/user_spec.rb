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
  it { should respond_to (:admin?) }


  describe "username with mixed case" do
    let(:mixed_case_username) { "BilLiyBoBJoThEThIrD" }

    it "should be saved as all lower-case" do
      @user.username = mixed_case_username
      @user.save
      @user.reload.username.should == mixed_case_username.downcase
    end
  end
end
