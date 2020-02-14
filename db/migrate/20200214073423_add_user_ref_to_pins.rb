class AddUserRefToPins < ActiveRecord::Migration[5.2]
  def change
    add_column :pins, :user, :reference
  end
end
