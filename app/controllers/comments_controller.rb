class CommentsController < ApplicationController
before_action :set_movie

  def index
    @comment = Comment.all
  end
  def new
    @comment = Comment.new
  end

  def create
    Comment.create(comment_params)
    redirect_to movie_path(@movie.id)
  end


  private
  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def comment_params
    params.require(:comment).permit(:title, :text, :rate).merge(user_id: 1, movie_id: params[:movie_id])
  end
end
