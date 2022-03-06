class ChangeColumnHeads7 < ActiveRecord::Migration[6.1]
  def change
    remove_column :heads, :person_id, :integer
    add_column :heads, :person_name, :string
  end
end
