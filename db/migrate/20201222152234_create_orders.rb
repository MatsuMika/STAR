class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer "user_id"
      t.integer "payment_method", default: 0, null: false
      t.integer "delivery_fee"
      t.integer "order_status", default: 0, null: false
      t.string "postal_code"
      t.string "address"
      t.string "name"
      t.integer "total_payment"

      t.timestamps
    end
  end
end
