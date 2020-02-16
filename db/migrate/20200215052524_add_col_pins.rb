class AddColPins < ActiveRecord::Migration[5.2]
  def change
    change_table :pins do |t|
      t.references :board
    end
  end
end
