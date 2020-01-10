class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|

      t.string :title, null: false
      t.string :screening_time, null: false
      t.integer :year, null: false
      t.text :detail, null: false
      t.integer :genre_id, null: false
      t.string :director, null: false
      t.string :starring, null: false
      t.string :rating_status
      t.timestamps
    end
  end
end
