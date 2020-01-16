class HomesController < ApplicationController
  
  def index
    @genres = Genre.all
    @user = User.find_by(params[:id])
    @movies = Movie.all.order("created_at DESC")
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    @user_id = current_user.id
    @movie_id = Movie.find(params[:id]).id
    @fav = Favorite.new(user_id: @user_id, movie_id: @movie_id)
    if @fav.save!
      redirect_to post
    end
  end

  def destroy
    @fav = Favorite.find(params[:id])
    if favorite.destroy
      redirect_to users_path(current_user)
    end
  end

end