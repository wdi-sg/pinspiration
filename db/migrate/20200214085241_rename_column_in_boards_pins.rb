class RenameColumnInBoardsPins < ActiveRecord::Migration[5.2]
  def change
    rename_column :boards_pins, :board_id_id, :board_id
    rename_column :boards_pins, :pin_id_id, :pin_id
  end
end
