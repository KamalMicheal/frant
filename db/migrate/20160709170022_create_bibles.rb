class CreateBibles < ActiveRecord::Migration
  def change
    create_table :bibles do |t|
      t.references :bible_book
      t.integer :chapter_number
      t.integer :verse_number
      t.text :verse

      t.timestamps null: false
    end
  end
end
