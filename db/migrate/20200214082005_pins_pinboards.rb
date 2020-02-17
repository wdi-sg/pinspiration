class PinsPinboards < ActiveRecord::Migration[5.2]
  def change
    create_table :pins_pinsboards do |t|
  t.references :pinboard_id
  t.references :pin_id
  t.timestamps
end
  end
end