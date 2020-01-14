class FavoritesController < ApplicationController

  def create
    user=current_user
    movie=Movie.find(params[:movie_id])
    if Favorite.create(user_id: user.id,movie_id:movie_id)
    redirect_to post
    else
      redirect_to root_url
    end

  end

  def destroy
    user=current_user
    movie=Movie.find(params[:movie_id])
    if favorite=Favorite.find_by(user_id: user.id,movie_id:movie_id)
      favorite.delete
      redirect_to users_path(current_user)
    else
      redirect_to root_url
    end
    
end
