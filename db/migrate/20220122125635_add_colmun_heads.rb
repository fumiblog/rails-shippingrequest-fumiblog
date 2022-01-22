class AddColmunHeads < ActiveRecord::Migration[6.1]
  def change
    add_column :heads, :company_id, :integer
  end
end
