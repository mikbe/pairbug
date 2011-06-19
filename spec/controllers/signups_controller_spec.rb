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
    {}
  end

  describe "GET index" do
    it "assigns all signups as @signups" do
      signup = Signup.create! valid_attributes
      get :index
      assigns(:signups).should eq([signup])
    end
  end

  describe "GET show" do
    it "assigns the requested signup as @signup" do
      signup = Signup.create! valid_attributes
      get :show, :id => signup.id.to_s
      assigns(:signup).should eq(signup)
    end
  end

  describe "GET new" do
    it "assigns a new signup as @signup" do
      get :new
      assigns(:signup).should be_a_new(Signup)
    end
  end

  describe "GET edit" do
    it "assigns the requested signup as @signup" do
      signup = Signup.create! valid_attributes
      get :edit, :id => signup.id.to_s
      assigns(:signup).should eq(signup)
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
        response.should redirect_to(Signup.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved signup as @signup" do
        # Trigger the behavior that occurs when invalid params are submitted
        Signup.any_instance.stub(:save).and_return(false)
        post :create, :signup => {}
        assigns(:signup).should be_a_new(Signup)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Signup.any_instance.stub(:save).and_return(false)
        post :create, :signup => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested signup" do
        signup = Signup.create! valid_attributes
        # Assuming there are no other signups in the database, this
        # specifies that the Signup created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Signup.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => signup.id, :signup => {'these' => 'params'}
      end

      it "assigns the requested signup as @signup" do
        signup = Signup.create! valid_attributes
        put :update, :id => signup.id, :signup => valid_attributes
        assigns(:signup).should eq(signup)
      end

      it "redirects to the signup" do
        signup = Signup.create! valid_attributes
        put :update, :id => signup.id, :signup => valid_attributes
        response.should redirect_to(signup)
      end
    end

    describe "with invalid params" do
      it "assigns the signup as @signup" do
        signup = Signup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Signup.any_instance.stub(:save).and_return(false)
        put :update, :id => signup.id.to_s, :signup => {}
        assigns(:signup).should eq(signup)
      end

      it "re-renders the 'edit' template" do
        signup = Signup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Signup.any_instance.stub(:save).and_return(false)
        put :update, :id => signup.id.to_s, :signup => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested signup" do
      signup = Signup.create! valid_attributes
      expect {
        delete :destroy, :id => signup.id.to_s
      }.to change(Signup, :count).by(-1)
    end

    it "redirects to the signups list" do
      signup = Signup.create! valid_attributes
      delete :destroy, :id => signup.id.to_s
      response.should redirect_to(signups_url)
    end
  end

end
