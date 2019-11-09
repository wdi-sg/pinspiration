class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.text :title
      t.text :pin_url
      t.timestamps
    end
  end
end