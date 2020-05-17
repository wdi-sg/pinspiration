class PinsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :pins_users do |t|
      t.references :pin
      t.references :user
      t.timestamps
    end    
  end
end
