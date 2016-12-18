class RelationController < ApplicationController

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
    @follow = params[:relation][:follow_id]
    @followed = params[:relation][:followed_id]
    @relation = Relation.create(follow_id: @follow, followed_id: @followed)
    redirect_to relation_path(current_user), notice: 'フォローしました!!!'
  end

  def destroy
    #フォロー外すアクション
    @user = Relation.find_by(follow_id: current_user.id).destroy
    redirect_to relation_path(current_user)
  end

end
