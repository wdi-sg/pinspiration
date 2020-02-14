class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :title
      t.string :img_url
      t.integer :id

      t.timestamps
    end
    add_index :pins, :id, unique: true
  end
end
