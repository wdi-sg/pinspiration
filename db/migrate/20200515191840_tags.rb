class Tags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :tagtext
      t.timestamps
    end
  end
end