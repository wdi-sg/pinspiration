class Comments < ActiveRecord::Migration[5.2]
  def change
    create_table :kopis_customers do |t|
      t.string :body
      t.references :user
      t.references :pin
      t.timestamps
    end
  end
end