class PinsPinboardsssss < ActiveRecord::Migration[5.2]
   def change
     create_table :pinboards_pins do |t|
  t.references :pinboard
  t.references :pin
  t.timestamps
end
end
end