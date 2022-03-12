class AddColumnCompanies5 < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :supplier, :boolean
  end
end
