require 'rails_helper'

RSpec.describe "Users", type: :request do
  tweet_id = "1051962388"
  user_id = "13334762"
  username = "github"

  describe "GET /lookup" do
    it "Users Lookup ID: returns http success" do
      get "/api/v1/users/lookup_id/#{user_id}"
      expect(response).to have_http_status 200
    end

    it "Users Lookup Username: returns http success" do
      get "/api/v1/users/lookup_username/#{username}"
      expect(response).to have_http_status 200
    end
  end

  describe "GET /follows" do
    it "Follows Following: returns http success" do
      get "/api/v1/users/following/#{user_id}"
      expect(response).to have_http_status 200
    end

    it "Follows Followers: returns http success" do
      get "/api/v1/users/followers/#{user_id}"
      expect(response).to have_http_status 200
    end
  end
end
