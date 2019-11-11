class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
         t.text :text
      t.references :pin
      t.timestamps
    end
  end
end