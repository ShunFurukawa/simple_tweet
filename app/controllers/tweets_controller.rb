class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def new
  end

  def show
    @tweet = Tweet.find(params[:id])
    @like = Like.find_by(tweet_id: @tweet.id)
  end

  def create
    @tweet = Tweet.create(tweet_params)
    redirect_to @tweet
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    @tweet = Tweet.create(tweet_params)
    redirect_to @tweet
  end

  def destroy
    @tweet = Tweet.find(params[:id]).destroy
    redirect_to '/tweets'
  end

  private
    def tweet_params
      params.require(:tweets).permit(:title, :text, :user_id)
    end

end
