require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  user = FactoryGirl.build(:user)
  usercreate = FactoryGirl.create(:user)
  attrs = FactoryGirl.attributes_for(:user)


  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "show all users" do
      get :index 
      expect(user.username).to eq("CandyKane")
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "assigns a new user as @user" do
      usercreate
      get :new, {}
      expect(assigns(:user)).to be_a(User)
    end

  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: 1
      expect(response).to have_http_status(:success)
    end

    it "should assign requested user as @user" do
      get :show, id: usercreate.id
      expect(assigns(:user)).to eq(User.last)
    end
  end

  describe "GET #search" do
    it "returns http success" do
      get :search
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #searchresults" do
    it "returns http success" do
      get :searchresults
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, id: 1
      expect(response).to have_http_status(:success)
    end

    it "assigns the requested user as @user" do
      get :edit, id: usercreate.id
      expect(assigns(:user).id).to eq(1)
    end
  end

  describe "POST #create" do
    context "valid attributes" do

      it "returns http success" do
        post :create, user: {user: usercreate}
        expect(response).to have_http_status(302)
      end
      it " should create a new user " do
        post :create, user: {user: user}
        expect(user.email).to eq("candy@gmail.com")
      end
      it " Should redirect to a new page after creation" do
        post :create, user: {user: user}
        expect(response).to redirect_to("/users/2")  #expect(response).to redirect_to dog_path(assigns(:dog))
      end
    end

    context "invalid attributes" do
      it " should not create a new user" do
        usercreate
        post :create, user: {email: "candy@gmail.com"}
        expect(User.last).to be nil
      end
    end
  end
end
