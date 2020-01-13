class RemoveRatingStatusFromMovies < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :rating_status
  end
end
