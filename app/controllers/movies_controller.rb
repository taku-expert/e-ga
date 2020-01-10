class MoviesController < ApplicationController

  def new
    @movies = Movie.new
  end

  def create
    @movies = Movie.new
    if @movie.save
      redirect_to (new_movie_path)
    else
      render action: "new"
  end

  private

  def movie_post
    params.require(:movie).permit(
      :title,
      :screening_time,
      :detail,
      :director,
      :starring,
      :year
    )
  end
end
