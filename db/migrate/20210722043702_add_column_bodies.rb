class AddColumnBodies < ActiveRecord::Migration[6.1]
  def change
    add_column :bodies, :construction_id, :integer
  end
end
