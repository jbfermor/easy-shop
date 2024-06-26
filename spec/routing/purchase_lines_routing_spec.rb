require "rails_helper"

RSpec.describe PurchaseLinesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/purchase_lines").to route_to("purchase_lines#index")
    end

    it "routes to #new" do
      expect(get: "/purchase_lines/new").to route_to("purchase_lines#new")
    end

    it "routes to #show" do
      expect(get: "/purchase_lines/1").to route_to("purchase_lines#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/purchase_lines/1/edit").to route_to("purchase_lines#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/purchase_lines").to route_to("purchase_lines#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/purchase_lines/1").to route_to("purchase_lines#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/purchase_lines/1").to route_to("purchase_lines#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/purchase_lines/1").to route_to("purchase_lines#destroy", id: "1")
    end
  end
end
