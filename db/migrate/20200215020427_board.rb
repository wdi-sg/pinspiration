class Board < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.text :name
      t.references :user
      t.timestamps
    end
  end
end
