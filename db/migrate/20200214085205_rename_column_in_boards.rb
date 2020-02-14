class RenameColumnInBoards < ActiveRecord::Migration[5.2]
  def change
    rename_column :boards, :user_id_id, :user_id
  end
end
