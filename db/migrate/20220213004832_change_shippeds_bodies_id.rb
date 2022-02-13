class ChangeShippedsBodiesId < ActiveRecord::Migration[6.1]
  def change
    rename_column :shippeds, :bodies_id, :body_id
  end
end
