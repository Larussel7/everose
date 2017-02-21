class CreateExtras < ActiveRecord::Migration[5.0]

  def up
    create_table :extras do |t|
      t.string "rus_title"
      t.text "description"
      t.decimal "price"
      t.integer  "quantity",   default: 1
      t.integer "order_id"

      t.timestamps
    end
    add_index("extras", "order_id")
  end

  def down
    drop_table :extras
  end

end
