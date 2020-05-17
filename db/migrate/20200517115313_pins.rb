class Pins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :title
      t.string :photo_url
      t.string :caption
      t.timestamps
    end
  end
end
