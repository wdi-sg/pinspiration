class BoardsPins < ActiveRecord::Migration[5.2]
  def change
    create_table :boards_pins do |t|
      t.references :board
      t.references :pin
      t.timestamps
    end
  end
end
