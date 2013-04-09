class CreateTable7s < ActiveRecord::Migration
  def change
    create_table :table7s do |t|
      t.string :col1
      t.string :col2
      t.string :col3
      t.string :col4

      t.timestamps
    end
  end
end
