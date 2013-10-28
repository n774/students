require "spec_helper"

describe EnumviewsController do
  describe "routing" do

    it "routes to #index" do
      get("/enumviews").should route_to("enumviews#index")
    end

    it "routes to #new" do
      get("/enumviews/new").should route_to("enumviews#new")
    end

    it "routes to #show" do
      get("/enumviews/1").should route_to("enumviews#show", :id => "1")
    end

    it "routes to #edit" do
      get("/enumviews/1/edit").should route_to("enumviews#edit", :id => "1")
    end

    it "routes to #create" do
      post("/enumviews").should route_to("enumviews#create")
    end

    it "routes to #update" do
      put("/enumviews/1").should route_to("enumviews#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/enumviews/1").should route_to("enumviews#destroy", :id => "1")
    end

  end
end
