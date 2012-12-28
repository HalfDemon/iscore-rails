require "spec_helper"

describe AvailabilityServiceChecksController do
  describe "routing" do

    it "routes to #index" do
      get("/availability_service_checks").should route_to("availability_service_checks#index")
    end

    it "routes to #new" do
      get("/availability_service_checks/new").should route_to("availability_service_checks#new")
    end

    it "routes to #show" do
      get("/availability_service_checks/1").should route_to("availability_service_checks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/availability_service_checks/1/edit").should route_to("availability_service_checks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/availability_service_checks").should route_to("availability_service_checks#create")
    end

    it "routes to #update" do
      put("/availability_service_checks/1").should route_to("availability_service_checks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/availability_service_checks/1").should route_to("availability_service_checks#destroy", :id => "1")
    end

  end
end
