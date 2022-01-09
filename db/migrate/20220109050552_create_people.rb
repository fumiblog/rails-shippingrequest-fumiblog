class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :company_id
      t.string :position
      t.string :handy_phone

      t.timestamps
    end
  end
end
