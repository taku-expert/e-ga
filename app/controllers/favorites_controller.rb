class FavoritesController < ApplicationController

  def create
    user = current_user
    movie = Movie.find(params[:movie_id])
    if Favorite.create(user_id: user.id, movie_id: movie.id)
      redirect_to root_path
    else
      redirect_to root_url
    end

  end

  def destroy
    user=current_user
    movie=Movie.find(params[:movie_id])
    if favorite=Favorite.find_by(user_id: user.id,movie_id:movie.id)
      favorite.delete
      redirect_to root_path
    else
      redirect_to root_url
    end
  end
    
end
