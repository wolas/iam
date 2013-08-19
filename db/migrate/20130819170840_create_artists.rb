class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.text :bio
      t.string :name
      t.date :birth
      t.string :nationality
      t.string :web

      t.timestamps
    end
  end
end
