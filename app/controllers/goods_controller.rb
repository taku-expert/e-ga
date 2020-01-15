class GoodsController < ApplicationController
  def create
    user=current_user
    comment=Comment.find(params[:comment_id])
    if Good.create(user_id: user.id,comment_id:comment.id)
    redirect_to post
    else
      redirect_to root_url
    end

  end

  def destroy
    user=current_user
    comment=Comment.find(params[:comment_id])
    if good=Good.find_by(user_id: user.id,comment_id:comment.id)
      good.delete
      redirect_to users_path(current_user)
    else
      redirect_to root_url
    end
end
