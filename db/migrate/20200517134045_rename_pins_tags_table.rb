class RenamePinsTagsTable < ActiveRecord::Migration[6.0]
  def change
        rename_table :pins_tag, :pins_tags
  end
end
