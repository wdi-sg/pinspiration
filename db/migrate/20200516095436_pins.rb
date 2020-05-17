class Pins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :media_url
      t.text :caption
    end
  end
end
