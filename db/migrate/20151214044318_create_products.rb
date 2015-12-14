class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :company
      t.datetime :date
      t.text :description
      t.string :large_category
      t.string :small_category
      t.integer :remaining_count
      t.decimal :price
      t.string :image_url

      t.timestamps null: false
    end
  end
end
