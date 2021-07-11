class AddColumnConstructions2 < ActiveRecord::Migration[6.1]
  def change
    add_column :constructions, :delivery_name, :string
  end
end
