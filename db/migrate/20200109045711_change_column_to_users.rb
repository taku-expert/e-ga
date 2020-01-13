class ChangeColumnToUsers < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :favoritegenre_id, :integer, null: true
  end

  def down
    change_column :users, :favoritegenre_id, :integer, null: false
  end
  
end
