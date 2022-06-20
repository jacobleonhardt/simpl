class Api::Beta::UsersController < ApplicationController

  # before_action :require_user_logged_in!, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.all
    render json: @user
  end

  def show
    @user ||= @current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render "new"
    end
  end

  def edit
    @user = User.find(user_id)
  end

  def update
    @user = User.find(user_id)
    if @user.update(user_params)
      redirect_to @user
    else
      render "edit"
    end
  end

  def destroy
    @user = User.find(user_id)
    @user.destroy
    session[:user_id] = nil
    redirect_to root_path
  end


  private

  def user_id
    params.require_user(:user).permit(:id)
  end

  def user_params
    params.require_user(:user).permit(:name, :email, :password_digest)
  end

end
