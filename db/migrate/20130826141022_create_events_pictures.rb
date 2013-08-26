class CreateEventsPictures < ActiveRecord::Migration
  def change
    create_table :events_pictures, id: false do |t|
      t.integer :event_id
      t.integer :picture_id
    end
  end
end

