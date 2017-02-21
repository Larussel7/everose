class CreateOrders < ActiveRecord::Migration[5.0]

  def up
    create_table :orders do |t|

      t.timestamps
    end
  end

  def down
    drop_table :orders
  end

end
