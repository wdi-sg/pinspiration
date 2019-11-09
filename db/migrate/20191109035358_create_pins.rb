class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :name
      t.string :img_url
      t.string :display
      t.references :user
      t.timestamps
    end
  end
end
