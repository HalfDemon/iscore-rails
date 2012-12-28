require "spec_helper"

describe UsabilityReportsSubmissionsController do
  describe "routing" do

    it "routes to #index" do
      get("/usability_reports_submissions").should route_to("usability_reports_submissions#index")
    end

    it "routes to #new" do
      get("/usability_reports_submissions/new").should route_to("usability_reports_submissions#new")
    end

    it "routes to #show" do
      get("/usability_reports_submissions/1").should route_to("usability_reports_submissions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/usability_reports_submissions/1/edit").should route_to("usability_reports_submissions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/usability_reports_submissions").should route_to("usability_reports_submissions#create")
    end

    it "routes to #update" do
      put("/usability_reports_submissions/1").should route_to("usability_reports_submissions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/usability_reports_submissions/1").should route_to("usability_reports_submissions#destroy", :id => "1")
    end

  end
end
