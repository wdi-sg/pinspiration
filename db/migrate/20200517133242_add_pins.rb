class AddPins < ActiveRecord::Migration[6.0]
  def change
        create_table :tags do |t|
      t.string :name
      t.timestamps
    end
  end
end
