class CreateWhens < ActiveRecord::Migration[5.0]

  def up
    create_table :whens do |t|
      t.string "date"
      t.string "time"
      t.integer "order_id"

      t.timestamps
    end
    add_index("whens", "order_id")
  end

  def down
    drop_table :whens
  end

end
