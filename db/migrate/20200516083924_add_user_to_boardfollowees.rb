class AddUserToBoardfollowees < ActiveRecord::Migration[5.2]
  def change
    add_reference :boardfollowees, :user, foreign_key: true
  end
end
