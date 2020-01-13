class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_post)
    if @movie.save
      redirect_to (root_path)
    else
      render action: "new"
    end
  end

  private

  def movie_post
    params.require(:movie).permit(
      :title,
      :screening_time,
      :detail,
      :director,
      :starring,
      :year,
      :genre_id,
      :rating_status,
      :image
    )
  end
end