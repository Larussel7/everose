class CreateLineItems < ActiveRecord::Migration[5.0]

  def up
    create_table :line_items do |t|
      t.integer  "product_id"
      t.integer  "cart_id"
      t.integer  "quantity",   default: 1
      t.integer  "order_id"

      t.timestamps
    end
    add_index("line_items", "cart_id")
    add_index("line_items", "order_id")
    add_index("line_items", "product_id")
  end

  def down
    drop_table :line_items
  end

end
