class HomesController < ApplicationController
  
  def index
    @user = User.find_by(params[:id])
    @movies = Movie.all.order("created_at DESC")
  end
  
end
