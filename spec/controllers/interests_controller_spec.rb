require 'spec_helper'

describe InterestsController do

  # This should return the minimal set of attributes required to create a valid
  # Interest. As you add validations to Interest, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all interests as @interests" do
      interest = Interest.create! valid_attributes
      get :index
      assigns(:interests).should eq([interest])
    end
  end

  describe "GET show" do
    it "assigns the requested interest as @interest" do
      interest = Interest.create! valid_attributes
      get :show, :id => interest.id.to_s
      assigns(:interest).should eq(interest)
    end
  end

  describe "GET new" do
    it "assigns a new interest as @interest" do
      get :new
      assigns(:interest).should be_a_new(Interest)
    end
  end

  describe "GET edit" do
    it "assigns the requested interest as @interest" do
      interest = Interest.create! valid_attributes
      get :edit, :id => interest.id.to_s
      assigns(:interest).should eq(interest)
    end
  end

  describe "POST create" do
    describe "with valid params" do
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

    describe "with invalid params" do
      it "assigns a newly created but unsaved interest as @interest" do
        # Trigger the behavior that occurs when invalid params are submitted
        Interest.any_instance.stub(:save).and_return(false)
        post :create, :interest => {}
        assigns(:interest).should be_a_new(Interest)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Interest.any_instance.stub(:save).and_return(false)
        post :create, :interest => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested interest" do
        interest = Interest.create! valid_attributes
        # Assuming there are no other interests in the database, this
        # specifies that the Interest created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Interest.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => interest.id, :interest => {'these' => 'params'}
      end

      it "assigns the requested interest as @interest" do
        interest = Interest.create! valid_attributes
        put :update, :id => interest.id, :interest => valid_attributes
        assigns(:interest).should eq(interest)
      end

      it "redirects to the interest" do
        interest = Interest.create! valid_attributes
        put :update, :id => interest.id, :interest => valid_attributes
        response.should redirect_to(interest)
      end
    end

    describe "with invalid params" do
      it "assigns the interest as @interest" do
        interest = Interest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Interest.any_instance.stub(:save).and_return(false)
        put :update, :id => interest.id.to_s, :interest => {}
        assigns(:interest).should eq(interest)
      end

      it "re-renders the 'edit' template" do
        interest = Interest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Interest.any_instance.stub(:save).and_return(false)
        put :update, :id => interest.id.to_s, :interest => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested interest" do
      interest = Interest.create! valid_attributes
      expect {
        delete :destroy, :id => interest.id.to_s
      }.to change(Interest, :count).by(-1)
    end

    it "redirects to the interests list" do
      interest = Interest.create! valid_attributes
      delete :destroy, :id => interest.id.to_s
      response.should redirect_to(interests_url)
    end
  end

end
