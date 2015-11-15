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
  end

end
