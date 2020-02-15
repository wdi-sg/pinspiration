class Tags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.text :name
      t.references :pin
      t.timestamps
    end
  end
end
