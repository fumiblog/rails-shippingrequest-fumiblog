class AddColumnCompanies < ActiveRecord::Migration[6.1]
  def up
    add_column :companies, :user_id, :integer
  end
end
