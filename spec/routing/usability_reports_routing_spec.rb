require "spec_helper"

describe UsabilityReportsController do
  describe "routing" do

    it "routes to #index" do
      get("/usability_reports").should route_to("usability_reports#index")
    end

    it "routes to #new" do
      get("/usability_reports/new").should route_to("usability_reports#new")
    end

    it "routes to #show" do
      get("/usability_reports/1").should route_to("usability_reports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/usability_reports/1/edit").should route_to("usability_reports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/usability_reports").should route_to("usability_reports#create")
    end

    it "routes to #update" do
      put("/usability_reports/1").should route_to("usability_reports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/usability_reports/1").should route_to("usability_reports#destroy", :id => "1")
    end

  end
end
