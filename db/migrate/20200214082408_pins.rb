class Pins < ActiveRecord::Migration[5.2]
  def change
  	create_table :pins do |t|
		t.string :img_link
		t.references :board
		t.timestamps
		end
  end
end
