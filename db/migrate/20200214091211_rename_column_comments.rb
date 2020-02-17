class RenameColumnComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :user_id_id, :user_id
  end
end
