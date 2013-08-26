class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :summary
      t.datetime :start
      t.datetime :stop
      t.string :category
      t.string :place

      t.timestamps
    end
  end
end
