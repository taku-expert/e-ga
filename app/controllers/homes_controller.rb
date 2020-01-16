class HomesController < ApplicationController
  
  def index
    @genres = Genre.all

    @user = User.find_by(params[:id])
    @movies = Movie.all.order("created_at DESC")
  end

  def show
    @movie = Movie.find(params[:id])
  end

end