class CreatePins < ActiveRecord::Migration[6.0]
  def change
    create_table :pins do |t|
      t.text :title
      t.text :image

      t.timestamps
    end
  end
end
