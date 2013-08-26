class RenamePictureIdToPaintingId < ActiveRecord::Migration
  def change
    rename_column :events_paintings, :picture_id, :painting_id
  end
end
