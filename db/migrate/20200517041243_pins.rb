class Pins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :url
      t.text :caption
      t.timestamps
    end
  end
end
