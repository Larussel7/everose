class CreatePayments < ActiveRecord::Migration[5.0]

  def up
    create_table :payments do |t|
      t.string "pay_type"
      t.integer "order_id"

      t.timestamps
    end
    add_index("payments", "order_id")
  end

  def down
    drop_table :payments
  end

end
