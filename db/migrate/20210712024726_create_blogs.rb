class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title,        null: false
      t.string :catch_copy,   null: false
      t.text :article,        null: false
      t.integer :category_id, null: false
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
