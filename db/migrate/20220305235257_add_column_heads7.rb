class AddColumnHeads7 < ActiveRecord::Migration[6.1]
  def change
    add_column :heads, :company_id, :integer
    add_column :heads, :person_id, :integer
  end
end
