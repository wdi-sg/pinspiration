class Followees < ActiveRecord::Migration[5.2]
  def change
        create_table :followees do |t|
            t.integer :followee_id
            t.timestamps
          end
  end
end