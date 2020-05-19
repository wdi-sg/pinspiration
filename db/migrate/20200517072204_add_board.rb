class AddBoard < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string :title
      t.references :user
      t.timestamps
    end
  end
end
