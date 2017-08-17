class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.integer :user_id
      t.decimal :total_price
      t.decimal :tax
      t.decimal :shipping
      t.decimal :sub_total
      t.string :order_number
    end
  end
end
