require 'rails_helper'

RSpec.describe "Tweets", type: :request do
  tweet_id = "1051962388"
  user_id = "13334762"
  username = "github"

  describe "GET /lookup" do
    it "Tweets Lookup: returns http success" do
      get "/api/v1/tweets/lookup/#{tweet_id}"
      expect(response).to have_http_status 200
    end
  end

  describe "GET /timelines" do
    it "Timelines Tweets: returns http success" do
      get "/api/v1/tweets/timelines_tweets/#{user_id}"
      expect(response).to have_http_status 200
    end

    it "Timelines Mentions: returns http success" do
      get "/api/v1/tweets/timelines_mentions/#{user_id}"
      expect(response).to have_http_status 200
    end
  end

  describe "GET /retweets" do
    it "Retweets Retweeted By: returns http success" do
      get "/api/v1/tweets/retweets_retweeted_by/#{tweet_id}"
      expect(response).to have_http_status 200
    end

    it "Retweets Quote Tweets: returns http success" do
      get "/api/v1/tweets/retweets_quote_tweets/#{tweet_id}"
      expect(response).to have_http_status 200
    end
  end

  describe "GET /likes" do
    it "Likes Liking Users: returns http success" do
      get "/api/v1/tweets/likes_liking_users/#{tweet_id}"
      expect(response).to have_http_status 200
    end

    it "Likes Liked Tweets: returns http success" do
      get "/api/v1/tweets/likes_liked_tweets/#{user_id}"
      expect(response).to have_http_status 200
    end
  end
end
