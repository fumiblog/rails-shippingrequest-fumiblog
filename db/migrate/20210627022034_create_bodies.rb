class CreateBodies < ActiveRecord::Migration[6.1]
  def change
    create_table :bodies do |t|
      t.integer :head_id
      t.string :product_name
      t.string :quantity
      t.integer :format

      t.timestamps
    end
  end
end
