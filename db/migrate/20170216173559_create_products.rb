class CreateProducts < ActiveRecord::Migration[5.0]
  def up
    create_table :products do |t|
      t.string "title"
      t.string "rus_title"
      t.text "description"
      t.decimal "price"
      t.string "image_url"
      t.string "image_url_cart"
      t.string "image_url_cart_small"

      t.timestamps
    end
  end

  def down
    drop_table :products
  end

end
