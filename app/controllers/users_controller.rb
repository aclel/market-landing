class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.create(user_params)
    redirect_to welcome_path
  end
  
  private
  def user_params
    params.require(:user).permit(:email)
  end
end
