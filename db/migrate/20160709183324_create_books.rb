class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.references :author, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.string :title
      t.text :abstract
      t.string :file

      t.timestamps null: false
    end
  end
end
