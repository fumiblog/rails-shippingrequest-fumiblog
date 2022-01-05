class RenameRemarksColumnToConstructions < ActiveRecord::Migration[6.1]
  def change
    rename_column :constructions, :remarks, :remark
  end
end
