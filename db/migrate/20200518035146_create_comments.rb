class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :body
      t.timestamp :date_posted

      t.timestamps
    end
  end
end
