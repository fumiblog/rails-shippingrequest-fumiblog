class RenameColumnHeads < ActiveRecord::Migration[6.1]
  def change
    rename_column :heads, :Arrival_time, :arrival_time
  end
end
