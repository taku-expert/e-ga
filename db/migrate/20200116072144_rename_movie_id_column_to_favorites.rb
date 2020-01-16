class RenameMovieIdColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :post_id, :movie_id
  end
end
