class CreatePins < ActiveRecord::Migration[6.0]
  def change
    create_table :pins do |t|
      t.string :title
      t.string :image
      t.references :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
