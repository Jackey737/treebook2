class UsersController < ApplicationController
  def create
    User.create(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :profile_name)
  end
end
