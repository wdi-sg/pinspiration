class Posts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :img_url
      t.string :description
      t.timestamps
    end
  end
end