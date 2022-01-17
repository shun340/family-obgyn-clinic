class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      
      t.integer :admin_id, null: false
      t.integer :appointment_id, null: false
      t.timestamps
      
    end
  end
end
