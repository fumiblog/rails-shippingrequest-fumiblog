class RemoveColumnTypeToJobs < ActiveRecord::Migration[6.1]
  def change
    remove_column :jobs, :type, :string
  end
end
