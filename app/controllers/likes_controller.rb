class LikesController < ApplicationController
  before_action :set_like, only: [:create, :destroy]

  def create
    @like = Like.create(user_id: current_user.id, tweet_id: @tweet.id)
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, tweet_id: @tweet.id).destroy
  end

  private
  def set_like
    @tweet = Tweet.find(params[:tweet_id])
    @likes = Like.where(tweet_id: @tweet.id)
  end

end
