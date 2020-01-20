class CommentsController < ApplicationController
before_action :set_movie

  def index
    @comment = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = @movie.comments.new(comment_params)
    @comment.save
    redirect_to movie_path(@movie.id)
  end

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def comment_params
    params.require(:comment).permit(:title, :text, :rate).merge(user_id: current_user.id, movie_id: params[:movie_id])
  end

end

    # @comment = Comment.new(text: comment_params[:text], title: comment_params[:title], rate: comment_params[:rate])
