require "spec_helper"

describe SignupsController do
  describe "routing" do

    it "routes to #index" do
      get("/signups").should route_to("signups#index")
    end

    it "routes to #new" do
      get("/signups/new").should route_to("signups#new")
    end

    it "routes to #show" do
      get("/signups/1").should route_to("signups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/signups/1/edit").should route_to("signups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/signups").should route_to("signups#create")
    end

    it "routes to #update" do
      put("/signups/1").should route_to("signups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/signups/1").should route_to("signups#destroy", :id => "1")
    end

  end
end
