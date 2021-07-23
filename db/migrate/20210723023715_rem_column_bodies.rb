class RemColumnBodies < ActiveRecord::Migration[6.1]
  def change
    remove_column :bodies, :head_id, :integer
  end
end
