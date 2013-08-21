class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :parent_id
      t.string :parent_type
      
      t.timestamps
    end
  end
end
