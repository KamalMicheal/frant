class CreateBibleBooks < ActiveRecord::Migration
  def change
    create_table :bible_books do |t|
      t.string :name
      t.boolean :is_new
      t.integer :book_order

      t.timestamps null: false
    end
  end
end
