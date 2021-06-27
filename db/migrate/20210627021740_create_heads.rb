class CreateHeads < ActiveRecord::Migration[6.1]
  def change
    create_table :heads do |t|
      t.date :created_date
      t.date :ship_date
      t.integer :Arrival_time
      t.integer :vehicle
      t.boolean :unic
      t.boolean :waiting_place
      t.string :rain
      t.string :delivery
      t.string :delivery_person
      t.string :delivery_tel
      t.string :delivery_address
      t.integer :order_no
      t.string :construction_name
      t.boolean :construction_metal
      t.string :remark

      t.timestamps
    end
  end
end
