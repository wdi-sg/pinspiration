class Pins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :title
      t.text :image
      t.timestamps
    end
  end
end