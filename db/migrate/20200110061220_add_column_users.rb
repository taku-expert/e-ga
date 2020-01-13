class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :rating_status, :string
  end
end
