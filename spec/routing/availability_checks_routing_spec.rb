require "spec_helper"

describe AvailabilityChecksController do
  describe "routing" do

    it "routes to #index" do
      get("/availability_checks").should route_to("availability_checks#index")
    end

    it "routes to #new" do
      get("/availability_checks/new").should route_to("availability_checks#new")
    end

    it "routes to #show" do
      get("/availability_checks/1").should route_to("availability_checks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/availability_checks/1/edit").should route_to("availability_checks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/availability_checks").should route_to("availability_checks#create")
    end

    it "routes to #update" do
      put("/availability_checks/1").should route_to("availability_checks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/availability_checks/1").should route_to("availability_checks#destroy", :id => "1")
    end

  end
end
