class CreateDeliveries < ActiveRecord::Migration[5.0]

  def up
    create_table :deliveries do |t|
      t.string "first_name", :limit => 100
      t.string "last_name", :limit => 100
      t.string "company"
      t.string "phone_number", :limit => 30
      t.string "address"
      t.string "address_apartment", :limit => 40
      t.integer "order_id"

      t.timestamps
    end
    add_index("deliveries", "order_id")
  end

  def down
    drop_table :deliveries
  end

end
