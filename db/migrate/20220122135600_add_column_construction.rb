class AddColumnConstruction < ActiveRecord::Migration[6.1]
  def change
    add_column :constructions, :company_id, :integer
  end
end
