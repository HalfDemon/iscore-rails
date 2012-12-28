require "spec_helper"

describe UsabilityReportsChecksController do
  describe "routing" do

    it "routes to #index" do
      get("/usability_reports_checks").should route_to("usability_reports_checks#index")
    end

    it "routes to #new" do
      get("/usability_reports_checks/new").should route_to("usability_reports_checks#new")
    end

    it "routes to #show" do
      get("/usability_reports_checks/1").should route_to("usability_reports_checks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/usability_reports_checks/1/edit").should route_to("usability_reports_checks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/usability_reports_checks").should route_to("usability_reports_checks#create")
    end

    it "routes to #update" do
      put("/usability_reports_checks/1").should route_to("usability_reports_checks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/usability_reports_checks/1").should route_to("usability_reports_checks#destroy", :id => "1")
    end

  end
end
