class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :tite
      t.string :body
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth
      t.integer :children_count

      t.timestamps
    end
    add_index :notes, :parent_id
  end
end
