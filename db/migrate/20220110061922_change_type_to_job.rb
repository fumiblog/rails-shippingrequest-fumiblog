class ChangeTypeToJob < ActiveRecord::Migration[6.1]
  def change
    change_column :jobs, :type, :string
  end
end
