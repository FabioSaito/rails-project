require 'rails_helper'

RSpec.describe "Users", type: :request do
  fixtures :users
  describe "GET /index" do
    it "returns http success" do
      get users_path
      expect(assigns(:users)).to eq(User.all)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get user_path(users(:user1).id)
      expect(response).to have_http_status(:success)
    end
    
    it "returns correct user" do
      get user_path(users(:user1).id)
      expect(assigns(:user)).to eq(users(:user1))
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/users/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http success" do
      post "/users/create"
      
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/users/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT /update" do
    it "returns http success" do
      put "/users/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/users/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
