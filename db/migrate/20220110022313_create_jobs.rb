class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :date
      t.integer :type
      t.string :content
      t.integer :person_id
      t.boolean :completed

      t.timestamps
    end
  end
end
