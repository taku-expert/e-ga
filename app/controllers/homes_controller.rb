class HomesController < ApplicationController
  
  def index
    @genres = Genre.all
    @user = current_user
    @movies = Movie.all.order("created_at DESC")
    @user_genre_id = @user.genre.id
    @movie_genre = Movie.where(genre_id: "#{@user_genre_id}")
    @movie_genre_view = @movie_genre.all.order("created_at DESC")
  end

  def show
    @movie = Movie.find(params[:id])
    @genres = Genre.all
  end

end