class RenameFavoritegenreIdColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :favoritegenre_id, :genre_id
  end
end
