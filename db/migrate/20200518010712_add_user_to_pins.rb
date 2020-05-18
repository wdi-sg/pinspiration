class AddUserToPins < ActiveRecord::Migration[5.2]

  # this adds a column user into the pins table
  def change
    add_reference :pins, :user, foreign_key: true
  end
end