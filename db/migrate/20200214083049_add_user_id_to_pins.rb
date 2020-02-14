class AddUserIdToPins < ActiveRecord::Migration[5.2]
  def change
    change_table :pins do |t|
      t.references :user
    end
  end
end
