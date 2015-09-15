require 'rails_helper'

RSpec.describe StatusesController, type: :controller do
  let(:valid_attributes) { { state: 1, message:'This is a fun message!' } }
  let(:invalid_attributes) { { state: nil} }

  describe "GET #index" do
    it "assigns all statuses as @statuses" do
      status = Status.create! valid_attributes
      get :index
      expect(assigns(:statuses)).to eq([status])
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Status" do
        expect { post :create, {:status => valid_attributes} }.to change(Status, :count).by(1)
      end

      it "assigns a newly created status as @status" do
        post :create, {:status => valid_attributes}
        expect(assigns(:status)).to be_a(Status)
        expect(assigns(:status)).to be_persisted
      end

      it "redirects to the created status" do
        post :create, {:status => valid_attributes}
        expect(response).to redirect_to(Status.last)
      end
    end

  end

end
