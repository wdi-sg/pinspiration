class AddPinsTagsTable < ActiveRecord::Migration[6.0]
  def change
            create_table :pins_tags do |t|
      t.references :pin
      t.references :tag
      t.timestamps
    end
  end
end
