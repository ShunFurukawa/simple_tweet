class RelationController < ApplicationController
  before_action :set_follow, only: [:create]
  before_action :set_unfollow, only: [:destroy]

  def show
    #フォロー 一覧表示
    @users = Relation.where(follow_id: current_user.id)
    @userss = []
    @users.each do |user|
      @userss << User.find(user.followed_id)
    end
  end

  def showed
    #フォロワー 一覧
    @users = Relation.where(followed_id: current_user.id)
    @userss = []
    @users.each do |user|
      @userss << User.find(user.follow_id)
    end
  end

  def create
    #フォローするアクション
    @follow = Relation.create(follow_id: current_user.id, followed_id: @user.id)
  end

  def destroy
    #フォロー外すアクション
    @unfollow = Relation.find_by(follow_id: current_user.id).destroy
  end

  private
  def set_follow
    @user = User.find(params[:format])
  end

  def set_unfollow
    @user = User.find(params[:id])
  end

end
