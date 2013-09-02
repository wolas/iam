class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author_name
      t.string :author_email
      t.string :author_web
      t.text :body
      t.integer :post_id

      t.timestamps
    end
  end
end
