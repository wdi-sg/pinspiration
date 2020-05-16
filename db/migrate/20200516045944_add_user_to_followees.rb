class AddUserToFollowees < ActiveRecord::Migration[5.2]
  def change
    add_reference :followees, :user, foreign_key: true
  end
end
