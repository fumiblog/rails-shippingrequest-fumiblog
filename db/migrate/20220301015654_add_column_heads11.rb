class AddColumnHeads11 < ActiveRecord::Migration[6.1]
  def change
    add_column :heads, :on_site, :boolean
  end
end
