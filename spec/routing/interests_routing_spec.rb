require "spec_helper"

describe InterestsController do
  describe "routing" do

    it "routes to #index" do
      get("/interests").should route_to("interests#index")
    end

    it "routes to #new" do
      get("/interests/new").should route_to("interests#new")
    end

    it "routes to #show" do
      get("/interests/1").should route_to("interests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/interests/1/edit").should route_to("interests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/interests").should route_to("interests#create")
    end

    it "routes to #update" do
      put("/interests/1").should route_to("interests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/interests/1").should route_to("interests#destroy", :id => "1")
    end

  end
end
