class CreateConstructions < ActiveRecord::Migration[6.1]
  def change
    create_table :constructions do |t|
      t.string :name
      t.string :order_no
      t.string :address
      t.string :person
      t.string :tel

      t.timestamps
    end
  end
end
