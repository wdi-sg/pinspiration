class RenameColumnInPins < ActiveRecord::Migration[5.2]
  def change
    rename_column :pins, :user_id_id, :user_id
    end
end
