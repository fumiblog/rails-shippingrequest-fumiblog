class RemoveColumnHeads < ActiveRecord::Migration[6.1]
  def change
    remove_column :heads, :construction_name, :string
  end
end
