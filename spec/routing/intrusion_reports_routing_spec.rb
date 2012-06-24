require "spec_helper"

describe IntrusionReportsController do
  describe "routing" do

    it "routes to #index" do
      get("/intrusion_reports").should route_to("intrusion_reports#index")
    end

    it "routes to #new" do
      get("/intrusion_reports/new").should route_to("intrusion_reports#new")
    end

    it "routes to #show" do
      get("/intrusion_reports/1").should route_to("intrusion_reports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/intrusion_reports/1/edit").should route_to("intrusion_reports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/intrusion_reports").should route_to("intrusion_reports#create")
    end

    it "routes to #update" do
      put("/intrusion_reports/1").should route_to("intrusion_reports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/intrusion_reports/1").should route_to("intrusion_reports#destroy", :id => "1")
    end

  end
end
