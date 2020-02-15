class Pins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :title
      t.string :image
      t.references :user
      t.timestamps
    end
  end
end
