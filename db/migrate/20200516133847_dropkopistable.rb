class Dropkopistable < ActiveRecord::Migration[5.2]
  def change
    def up
      drop_table :kopis_customers
    end
  end
end