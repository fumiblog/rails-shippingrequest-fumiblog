class AddColumnHeads5 < ActiveRecord::Migration[6.1]
  def change
    remove_column :heads, :ship_date, :time
    add_column :heads, :ship_date, :datetime 
  end
end
