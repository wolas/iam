class RenameTableEventsPicturesToEventsPaintings < ActiveRecord::Migration
  def change
    rename_table :events_pictures, :events_paintings
  end
end
