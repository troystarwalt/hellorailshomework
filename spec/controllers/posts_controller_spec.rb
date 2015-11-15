require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  post = FactoryGirl.build(:post)
  postcreate = FactoryGirl.create(:post)
  post_attrs = FactoryGirl.attributes_for(:post)

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      post
      get :show, id: post.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      post
      get :edit, id: post.id
      expect(response).to have_http_status(:success)
    end
  end

end
