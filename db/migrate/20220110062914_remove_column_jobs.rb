class RemoveColumnJobs < ActiveRecord::Migration[6.1]
  def down
    remove_column :jobs, :type, :string
  end
end
