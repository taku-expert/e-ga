class MoviesController < ApplicationController
before_action :set_comments
before_action :progress, only: :show

  def index
    @movies = Movie.all
    @average = @comments.average(:rate).floor(1)
  end

  def new
    @movie = Movie.new
  end

  def create
    Movie.create(movie_params)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  private

  def set_comments
    @comments = Comment.all
  end

  def movie_params
    params.require(:movie).permit(:title, :screening_time, :year, :detail, :genre_id, :director, :starring)
  end

  def average
    @comments = Comment.all
    @comments.rate.inject(:+)/@comments.length
  end

  def progress
    @movie = Movie.find(params[:id])
    @comments = Comment.all
    def max_progress
      @progress = @movie.comments.length
    end

    def progress_5
      @progress_5 = @movie.comments.where("rate=5")
    end
  end
end