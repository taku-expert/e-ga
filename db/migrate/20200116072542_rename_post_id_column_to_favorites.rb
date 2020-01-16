class RenamePostIdColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :job_administrations, references :post, references :movie,
  end
end
