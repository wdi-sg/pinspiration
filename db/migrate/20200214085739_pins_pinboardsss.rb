class PinsPinboardsss < ActiveRecord::Migration[5.2]
  def change
     create_table :pins_pinboards do |t|
  t.references :pinboard
  t.references :pin
  t.timestamps
end
  end
end