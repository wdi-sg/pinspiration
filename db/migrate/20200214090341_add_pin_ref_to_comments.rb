class AddPinRefToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :pin, foreign_key: true
  end
end
