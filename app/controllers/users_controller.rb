class UsersController < ApplicationController

  def mypage
    @user = User.find(current_user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
  end

  def user_params
    params.reauire(:user).permit(:name, :age, :gendder)
  end
end
