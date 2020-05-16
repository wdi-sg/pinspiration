class Boardfollowees < ActiveRecord::Migration[5.2]
  def change
        create_table :boardfollowees do |t|
            t.integer :boardfollowee_id
            t.timestamps
          end
  end
end