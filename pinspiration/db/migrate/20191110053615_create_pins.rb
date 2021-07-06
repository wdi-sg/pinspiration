class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :title
      t.string :imgUrl
      t.text :description

      t.timestamps
    end
  end
end
