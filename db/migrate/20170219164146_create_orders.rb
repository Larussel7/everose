class CreateOrders < ActiveRecord::Migration[5.0]

  def up
    create_table :orders do |t|
      t.string "first_name", :limit => 100
      t.string "last_name", :limit => 100
      t.string "company"
      t.string "phone_number", :limit => 30
      t.string "address"
      t.string "address_apartment", :limit => 40
      t.string "email"
      t.string "date"
      t.string "time"
      t.string "reason_sending"
      t.string "note_from"
      t.string "note_to"
      t.text   "note"
      t.string "special_instruction"
      t.string "pay_type"

      t.timestamps
    end
  end

  def down
    drop_table :orders
  end

end
