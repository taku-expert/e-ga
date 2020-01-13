class UsersController < ApplicationController

  def mypage
    @user = User.find(current_user.id)
    @admin = User.where(admin: '1')
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if current_user == @user
      if @user.update(user_params)
        redirect_to mypage_path(params[:id])
      else
        redirect_to "/"
      end
    else
      redirect_to "/"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :age, :gendder)
  end
end
