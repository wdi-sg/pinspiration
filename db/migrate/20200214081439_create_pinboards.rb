class CreatePinboards < ActiveRecord::Migration[5.2]
  def change
    create_table :pinboards do |t|
      t.text :title
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
