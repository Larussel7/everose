class CreateOrders < ActiveRecord::Migration[5.0]

  def up
    create_table :orders do |t|
      t.string "email"
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
