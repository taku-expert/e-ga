class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.references :user, null:false
      t.references :comment, null:false


      t.timestamps
    end
  end
end
