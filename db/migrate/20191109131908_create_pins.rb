class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :caption
      t.string :category
      t.string :photo_url
      t.references :user
      t.timestamps
    end
  end
end
