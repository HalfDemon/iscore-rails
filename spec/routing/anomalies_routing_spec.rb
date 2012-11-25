require "spec_helper"

describe AnomaliesController do
  describe "routing" do

    it "routes to #index" do
      get("/anomalies").should route_to("anomalies#index")
    end

    it "routes to #new" do
      get("/anomalies/new").should route_to("anomalies#new")
    end

    it "routes to #show" do
      get("/anomalies/1").should route_to("anomalies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/anomalies/1/edit").should route_to("anomalies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/anomalies").should route_to("anomalies#create")
    end

    it "routes to #update" do
      put("/anomalies/1").should route_to("anomalies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/anomalies/1").should route_to("anomalies#destroy", :id => "1")
    end

  end
end
