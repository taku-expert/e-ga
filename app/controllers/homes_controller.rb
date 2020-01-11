class HomesController < ApplicationController

  def index
    @movies = Movie.all.order("image DESC")
  end
  
end
