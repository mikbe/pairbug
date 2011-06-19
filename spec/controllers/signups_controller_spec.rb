require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SignupsController do

  # This should return the minimal set of attributes required to create a valid
  # Signup. As you add validations to Signup, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {ip: "192.168.1.105"}
  end

  describe "GET index" do
    it "assigns all signups as @signups" do
      signup = Signup.create! valid_attributes
      get :index
      assigns(:signups).should eq([signup])
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Signup" do
        expect {
          post :create, :signup => valid_attributes
        }.to change(Signup, :count).by(1)
      end

      it "assigns a newly created signup as @signup" do
        post :create, :signup => valid_attributes
        assigns(:signup).should be_a(Signup)
        assigns(:signup).should be_persisted
      end

      it "redirects to the created signup" do
        post :create, :signup => valid_attributes
        response.should redirect_to("/")
      end
    end

    context "with a duplicate ip" do
      
      it "does not create a new record" do
        post :create, :interest => valid_attributes
        expect {
          post :create, :interest => valid_attributes
        }.to_not change(Signup, :count).by(1)
        
      end
      
    end
    
  end

end
