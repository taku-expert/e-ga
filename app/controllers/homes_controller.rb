class HomesController < ApplicationController
  
  def index
    @user = User.find_by(params[:id])
  end
  
end
