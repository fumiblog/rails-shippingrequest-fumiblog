class AddColumnConstructions3 < ActiveRecord::Migration[6.1]
  def up
    add_column :constructions, :remarks, :string
  end
end
