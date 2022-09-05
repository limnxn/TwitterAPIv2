require 'net/http'
require 'uri'

module Api
  module V1
    class TweetsController < ApplicationController
      include Request

      # Tweets lookup
      def lookup
        render json: { status: 200, message: 'Tweets Lookup', data: request_url("/tweets/#{params[:tweet_id]}") }
      end

      # Timelines
      def timelines_tweets
        render json: { status: 200, message: 'Timelines Tweets', data: request_url("/users/#{params[:user_id]}/tweets") }
      end

      def timelines_mentions
        render json: { status: 200, message: 'Timelines Mentions', data: request_url("/users/#{params[:user_id]}/mentions") }
      end

      # Retweets
      def retweets_retweeted_by
        render json: { status: 200, message: 'Retweets Retweeted By', data: request_url("/tweets/#{params[:tweet_id]}/retweeted_by") }
      end

      def retweets_quote_tweets
        render json: { status: 200, message: 'Retweets Quote Tweets', data: request_url("/tweets/#{params[:tweet_id]}/quote_tweets") }
      end

      # Likes
      def likes_liking_users
        render json: { status: 200, message: 'Likes Liking Users', data: request_url("/tweets/#{params[:tweet_id]}/liking_users") }
      end

      def likes_liked_tweets
        render json: { status: 200, message: 'Likes Liked Tweets', data: request_url("/users/#{params[:user_id]}/liked_tweets") }
      end
    end
  end
end