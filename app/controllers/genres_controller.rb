class GenresController < ApplicationController

  def show
    @genres = Genre.all
    @genre = Genre.find(params[:id])
    @movies = Movie.where(genre_id:params[:id]).order("created_at DESC")
  end
end
