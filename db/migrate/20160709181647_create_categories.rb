class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :bio
      t.string :image
      t.integer :priority

      t.timestamps null: false
    end
  end
end
