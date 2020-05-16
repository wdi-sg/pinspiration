class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.text :title
      t.text :img
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end