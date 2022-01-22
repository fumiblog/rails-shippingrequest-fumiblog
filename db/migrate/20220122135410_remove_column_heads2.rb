class RemoveColumnHeads2 < ActiveRecord::Migration[6.1]
  def change
    remove_column :heads, :company_id, :integer
  end
end
