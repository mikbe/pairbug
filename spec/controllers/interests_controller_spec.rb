require 'spec_helper'

describe InterestsController do

  # This should return the minimal set of attributes required to create a valid
  # Interest. As you add validations to Interest, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {ip: "192.168.1.105"}
  end

  describe "GET index" do
    it "assigns all interests as @interests" do
      interest = Interest.create! valid_attributes
      get :index
      assigns(:interests).should eq([interest])
    end
  end

  describe "POST create" do
    context "with a unique ip" do
      it "creates a new Interest" do
        expect {
          post :create, :interest => valid_attributes
        }.to change(Interest, :count).by(1)
      end

      it "assigns a newly created interest as @interest" do
        post :create, :interest => valid_attributes
        assigns(:interest).should be_a(Interest)
        assigns(:interest).should be_persisted
      end

      it "redirects to the created interest" do
        post :create, :interest => valid_attributes
        response.should redirect_to(Interest.last)
      end
    end

    context "with a duplicate ip" do
      
      it "does not create a new record" do
        post :create, :interest => valid_attributes
        expect {
          post :create, :interest => valid_attributes
        }.to_not change(Interest, :count).by(1)
        
      end
      
    end

  end


end
