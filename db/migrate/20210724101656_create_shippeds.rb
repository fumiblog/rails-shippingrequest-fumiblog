class CreateShippeds < ActiveRecord::Migration[6.1]
  def change
    create_table :shippeds do |t|
      t.integer :head_id
      t.integer :bodies_id
      t.integer :quantity

      t.timestamps
    end
  end
end
