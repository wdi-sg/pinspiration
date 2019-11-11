class Comments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :date
      t.text :created_on
      t.text :updated_on
    end
  end
end
