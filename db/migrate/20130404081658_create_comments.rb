class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :note_id
      t.text :comment_text
      t.string :author

      t.timestamps
    end
    #add_index :note_id
  end
end
