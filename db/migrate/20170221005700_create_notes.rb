class CreateNotes < ActiveRecord::Migration[5.0]

  def up
    create_table :notes do |t|
      t.string "email"
      t.string "reason_sending"
      t.string "note_from"
      t.string "note_to"
      t.text   "note"
      t.string "special_instruction"
      t.integer "order_id"

      t.timestamps
    end
    add_index("notes", "order_id")
  end

  def down
    drop_table :notes
  end

end
