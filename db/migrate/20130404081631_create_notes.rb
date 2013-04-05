class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :table_name
      t.string :column_name
      t.text :note_text
      t.string :author

      t.timestamps
    end
  end
end
