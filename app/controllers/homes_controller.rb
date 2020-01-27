class HomesController < ApplicationController
  
  def index
    @genres = Genre.all
    @user = current_user
    @movies = Movie.all.order("created_at DESC")
    @user_genre_name = @user.genre.name
    @movie_genre = Movie.where(genre_id: "#{@user_genre_id}")
    @movie_genre_view = @movie_genre.all.order("created_at DESC")
  end

  def show
    @movie = Movie.find(params[:id])
    @genres = Genre.all
    @comments = Comment.where(movie_id: [@movie.id]).order("created_at DESC").page(params[:page]).per(5)
  end

  def getstarted
    @genres = Genre.all
  end

end