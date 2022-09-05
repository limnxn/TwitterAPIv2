Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      # Tweets
        # Tweets lookup
        get "tweets/lookup/:tweet_id" => "tweets#lookup"
        # Timelines
        get "tweets/timelines_tweets/:user_id" => "tweets#timelines_tweets"
        get "tweets/timelines_mentions/:user_id" => "tweets#timelines_mentions"
        # Retweets
        get "tweets/retweets_retweeted_by/:tweet_id" => "tweets#retweets_retweeted_by"
        get "tweets/retweets_quote_tweets/:tweet_id" => "tweets#retweets_quote_tweets"
        # Likes
        get "tweets/likes_liking_users/:tweet_id" => "tweets#likes_liking_users"
        get "tweets/likes_liked_tweets/:user_id" => "tweets#likes_liked_tweets"
      # Users
        # Users lookup
        get "users/lookup_id/:user_id" => "users#lookup_id"
        get "users/lookup_username/:username" => "users#lookup_username"
        # Follows
        get "users/following/:user_id" => "users#following"
        get "users/followers/:user_id" => "users#followers"
    end
  end
end
