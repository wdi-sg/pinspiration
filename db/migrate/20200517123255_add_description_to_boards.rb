class AddDescriptionToBoards < ActiveRecord::Migration[6.0]
  def change
    add_column :boards, :description, :text, null: false
  end
end
