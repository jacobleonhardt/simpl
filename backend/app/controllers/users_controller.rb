class UsersController < ApplicationController

  # before_action :require_user_logged_in!, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user ||= @current_user
  end

  def new
    @user = User.new
  end


  private

  def user_params
    params.require_user(:user).permit(:name, :email, :password_digest)
  end

end
