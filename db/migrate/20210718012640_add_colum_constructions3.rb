class AddColumConstructions3 < ActiveRecord::Migration[6.1]
  def change
    add_column :heads, :construction_id, :integer
  end
end
