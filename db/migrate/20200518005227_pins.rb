class Pins < ActiveRecord::Migration[5.2]
  def change

    create_table :pins do |t|
      t.string :title
      t.text :description
      t.text :url
      t.timestamps
    end

  end
end