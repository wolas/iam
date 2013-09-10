class AddProductIdToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :painting_id, :integer
  end
end
