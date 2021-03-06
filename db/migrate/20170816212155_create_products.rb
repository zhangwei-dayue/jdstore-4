class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.integer :quantity
      t.string :photo
      t.boolean :can_sell

      t.timestamps
    end
  end
end
