class Boards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :title
      t.references :user
      t.timestamps
    end
  end
end
