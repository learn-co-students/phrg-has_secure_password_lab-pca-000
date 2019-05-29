# frozen_string_literal: true

class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to "/"
    else
      redirect_to controller: "users", action: "new"
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
