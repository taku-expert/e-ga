class HomesController < ApplicationController

  def index
    @genres = Genre.all
  end
  
end
