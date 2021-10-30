class AddNullConstraintsToNote < ActiveRecord::Migration[6.1]
  def change
    rename_column :notes, :tite, :title

    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    change_column :notes, :parent_id, :integer, null: true, index: true

    #Ex:- change_column("admin_users", "email", :integer, :limit =>25)
    change_column :notes, :lft, :integer, null: false, index: true
    change_column :notes, :rgt, :integer, null: false, index: true
    change_column :notes, :depth, :integer, null: false, default: 0
    change_column :notes, :children_count, :integer, null: false, default: 0
  end
end
