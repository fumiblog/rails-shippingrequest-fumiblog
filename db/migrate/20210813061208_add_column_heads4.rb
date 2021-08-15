class AddColumnHeads4 < ActiveRecord::Migration[6.1]
  def change
    remove_column :heads, :ship_date, :date
    add_column :heads, :ship_date, :time
  end
end
