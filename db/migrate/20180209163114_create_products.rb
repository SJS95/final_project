class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :brand
      t.string :manufacturer
      t.string :model
      t.string :price

      t.timestamps null: false
    end
  end
end
