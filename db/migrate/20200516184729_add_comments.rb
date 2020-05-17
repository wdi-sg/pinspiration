class AddComments < ActiveRecord::Migration[6.0]
  def change
        create_table :comments do |t|
      t.text :text
      t.references :pin
      t.references :user
      t.timestamps
    end
  end
end
