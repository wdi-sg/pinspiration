class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :title
      t.string :url
      t.text :text
      t.references :user
      t.timestamps
    end
  end
end