class Username < ActiveRecord::Migration[5.2]
  def change
    create_table :usernames do |t|
      t.string :name
      t.references :user
    end
  end
end