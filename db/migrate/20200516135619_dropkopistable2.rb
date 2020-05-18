class Dropkopistable2 < ActiveRecord::Migration[5.2]
  def up
    drop_table :kopis_customers
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end