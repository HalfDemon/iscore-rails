require 'spec_helper'

describe "Sites" do
  subject { page }
  
  describe "index" do
    
    describe "listings" do
      
      before(:all) {30.times { create(:site) } }
      
      after(:all) { Site.delete_all }
      
      it "should list each user" do
        Site.all.each do |user|
          page.should have_selctor('td', text: site.name)
        end
      end
      
      it "should display the teams in order of rank by number of points" do
          before do
            first_site = Site.first
            first_site.points = 1500
            first_site.save!
          end
          page.find(:xpath, "//table/tbody/tr/").should have_selector('td', text: first_site.name)
      end
    end
  end
end
