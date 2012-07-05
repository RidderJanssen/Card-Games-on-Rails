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

describe TricksController do

  # This should return the minimal set of attributes required to create a valid
  # Trick. As you add validations to Trick, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TricksController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all tricks as @tricks" do
      trick = Trick.create! valid_attributes
      get :index, {}, valid_session
      assigns(:tricks).should eq([trick])
    end
  end

  describe "GET show" do
    it "assigns the requested trick as @trick" do
      trick = Trick.create! valid_attributes
      get :show, {:id => trick.to_param}, valid_session
      assigns(:trick).should eq(trick)
    end
  end

  describe "GET new" do
    it "assigns a new trick as @trick" do
      get :new, {}, valid_session
      assigns(:trick).should be_a_new(Trick)
    end
  end

  describe "GET edit" do
    it "assigns the requested trick as @trick" do
      trick = Trick.create! valid_attributes
      get :edit, {:id => trick.to_param}, valid_session
      assigns(:trick).should eq(trick)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Trick" do
        expect {
          post :create, {:trick => valid_attributes}, valid_session
        }.to change(Trick, :count).by(1)
      end

      it "assigns a newly created trick as @trick" do
        post :create, {:trick => valid_attributes}, valid_session
        assigns(:trick).should be_a(Trick)
        assigns(:trick).should be_persisted
      end

      it "redirects to the created trick" do
        post :create, {:trick => valid_attributes}, valid_session
        response.should redirect_to(Trick.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved trick as @trick" do
        # Trigger the behavior that occurs when invalid params are submitted
        Trick.any_instance.stub(:save).and_return(false)
        post :create, {:trick => {}}, valid_session
        assigns(:trick).should be_a_new(Trick)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Trick.any_instance.stub(:save).and_return(false)
        post :create, {:trick => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested trick" do
        trick = Trick.create! valid_attributes
        # Assuming there are no other tricks in the database, this
        # specifies that the Trick created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Trick.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => trick.to_param, :trick => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested trick as @trick" do
        trick = Trick.create! valid_attributes
        put :update, {:id => trick.to_param, :trick => valid_attributes}, valid_session
        assigns(:trick).should eq(trick)
      end

      it "redirects to the trick" do
        trick = Trick.create! valid_attributes
        put :update, {:id => trick.to_param, :trick => valid_attributes}, valid_session
        response.should redirect_to(trick)
      end
    end

    describe "with invalid params" do
      it "assigns the trick as @trick" do
        trick = Trick.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Trick.any_instance.stub(:save).and_return(false)
        put :update, {:id => trick.to_param, :trick => {}}, valid_session
        assigns(:trick).should eq(trick)
      end

      it "re-renders the 'edit' template" do
        trick = Trick.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Trick.any_instance.stub(:save).and_return(false)
        put :update, {:id => trick.to_param, :trick => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested trick" do
      trick = Trick.create! valid_attributes
      expect {
        delete :destroy, {:id => trick.to_param}, valid_session
      }.to change(Trick, :count).by(-1)
    end

    it "redirects to the tricks list" do
      trick = Trick.create! valid_attributes
      delete :destroy, {:id => trick.to_param}, valid_session
      response.should redirect_to(tricks_url)
    end
  end

end
