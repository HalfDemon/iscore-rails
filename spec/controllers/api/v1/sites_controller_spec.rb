require 'spec_helper'

describe Api::V1::SitesController, type: :api do
 	describe "get 'index'" do
 		before do
 			2.times do
 				create(:site)
 			end
 		end
	  

 	  it "should give back list assignments" do
 	  	@sites = Site.all
 	    get :index
 	    response.body.should eql(@sites.to_json) 
 	  end
 	end
end