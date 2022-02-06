class AddImageToConstructions < ActiveRecord::Migration[6.1]
  def change
    add_column :constructions, :image, :string
  end
end
