class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :post_code
      t.string :address
      t.string :tel
      t.string :fax
      t.string :ceo

      t.timestamps
    end
  end
end
