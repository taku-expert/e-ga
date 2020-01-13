class HomesController < ApplicationController

  def index
    @movies = Movie.all.order("created_at DESC")
  end

  def show
    @movie = Movie.find(params[:id])
  end
end