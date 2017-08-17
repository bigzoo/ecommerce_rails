class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :stock
      t.binary :image
      t.decimal :price
      t.string :description
    end
  end
end
