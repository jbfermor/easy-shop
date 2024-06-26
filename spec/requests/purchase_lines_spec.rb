require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/purchase_lines", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # PurchaseLine. As you add validations to PurchaseLine, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      PurchaseLine.create! valid_attributes
      get purchase_lines_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      purchase_line = PurchaseLine.create! valid_attributes
      get purchase_line_url(purchase_line)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_purchase_line_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      purchase_line = PurchaseLine.create! valid_attributes
      get edit_purchase_line_url(purchase_line)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new PurchaseLine" do
        expect {
          post purchase_lines_url, params: { purchase_line: valid_attributes }
        }.to change(PurchaseLine, :count).by(1)
      end

      it "redirects to the created purchase_line" do
        post purchase_lines_url, params: { purchase_line: valid_attributes }
        expect(response).to redirect_to(purchase_line_url(PurchaseLine.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new PurchaseLine" do
        expect {
          post purchase_lines_url, params: { purchase_line: invalid_attributes }
        }.to change(PurchaseLine, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post purchase_lines_url, params: { purchase_line: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested purchase_line" do
        purchase_line = PurchaseLine.create! valid_attributes
        patch purchase_line_url(purchase_line), params: { purchase_line: new_attributes }
        purchase_line.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the purchase_line" do
        purchase_line = PurchaseLine.create! valid_attributes
        patch purchase_line_url(purchase_line), params: { purchase_line: new_attributes }
        purchase_line.reload
        expect(response).to redirect_to(purchase_line_url(purchase_line))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        purchase_line = PurchaseLine.create! valid_attributes
        patch purchase_line_url(purchase_line), params: { purchase_line: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested purchase_line" do
      purchase_line = PurchaseLine.create! valid_attributes
      expect {
        delete purchase_line_url(purchase_line)
      }.to change(PurchaseLine, :count).by(-1)
    end

    it "redirects to the purchase_lines list" do
      purchase_line = PurchaseLine.create! valid_attributes
      delete purchase_line_url(purchase_line)
      expect(response).to redirect_to(purchase_lines_url)
    end
  end
end
