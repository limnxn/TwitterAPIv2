require 'net/http'
require 'uri'

module Api
  module V1
    class UsersController < ApplicationController
      include Request

      # Users lookup
      def lookup_id
        render json: { status: 200, message: 'Users Lookup ID', data: request_url("/users/#{params[:user_id]}") }
      end

      def lookup_username
        render json: { status: 200, message: 'Users Lookup Username', data: request_url("/users/by/username/#{params[:username]}") }
      end

      # Follows
      def following
        render json: { status: 200, message: 'Follows Following', data: request_url("/users/#{params[:user_id]}/following") }
      end

      def followers
        render json: { status: 200, message: 'Follows Followers', data: request_url("/users/#{params[:user_id]}/followers") }
      end
    end
  end
end