class AddColumnConstructions < ActiveRecord::Migration[6.1]
  def change
    add_column :constructions, :user_id, :integer
  end
end
