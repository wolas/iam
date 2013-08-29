class AddStuffToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :avatar_id, :integer
    add_column :photos, :avatar_type, :string
  end
end
