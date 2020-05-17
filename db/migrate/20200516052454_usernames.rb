class Usernames < ActiveRecord::Migration[5.2]
  def change
      create_table :usernames do |t|
      t.string :name
      t.references :user
      t.timestamps
    end
  end
end
