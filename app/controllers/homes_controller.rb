class HomesController < ApplicationController

  before_action :set_comments
  before_action :max_progress, :rate, :progress_5, :progress_4, :progress_3, :progress_2, :progress_1, only: :show

  def index
    @genres = Genre.all
    @user = current_user
    @movies = Movie.all.order("created_at DESC")
    # @user_genre_id = @user.genre.id
    # @movie_genre = Movie.where(genre_id: "#{@user_genre_id}")
    # @movie_genre_view = @movie_genre.all.order("created_at DESC")
  end

  def show
    @movie = Movie.find(params[:id])
    @comments = Comment.all
  end


  private

  def set_comments
    @comments = Comment.all
  end

  def movie_params
    params.require(:movie).permit(
      :title,
      :screening_time,
      :year,
      :detail,
      :genre_id,
      :director,
      :starring,
      :image
    )
  end

  def average
    @comments = Comment.all
    @comments.rate.inject(:+)/@comments.length
  end

  def max_progress
    @movie = Movie.find(params[:id])
    @progress = Comment.joins(:movie).group("comments.rate").order('count_all DESC').count
  end

  def rate
    @rate = [5,4,3,2,1]
  end

  def progress_5
    @movie = Movie.find(params[:id])
    @comments = Comment.all
    @progress_5 = @movie.comments.where("rate=5").length
  end

  def progress_4
    @movie = Movie.find(params[:id])
    @comments = Comment.all
    @progress_4 = @movie.comments.where("rate=4").length
  end

  def progress_3
    @movie = Movie.find(params[:id])
    @comments = Comment.all
    @progress_3 = @movie.comments.where("rate=3").length
  end

  def progress_2
    @movie = Movie.find(params[:id])
    @comments = Comment.all
    @progress_2 = @movie.comments.where("rate=2").length
  end

  def progress_1
    @movie = Movie.find(params[:id])
    @comments = Comment.all
    @progress_1 = @movie.comments.where("rate=1").length
  end
end