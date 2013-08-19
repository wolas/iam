class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.integer :artist_id
      t.string :title
      t.string :technique
      t.float :width
      t.float :height
      t.date :finished_on
      t.float :price

      t.timestamps
    end
  end
end
