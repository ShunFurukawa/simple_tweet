class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :login_require

  def login_require
    # redirect_to root_path unless current_user
  end


end
