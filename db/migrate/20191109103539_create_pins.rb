class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :title
      t.string :imageURL
      t.text :caption
      t.references :board, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
