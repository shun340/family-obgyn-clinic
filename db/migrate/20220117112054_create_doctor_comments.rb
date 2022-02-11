class CreateDoctorComments < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_comments do |t|
      
      t.integer  :appointment_id, null: false
      t.integer  :admin_id, null: false
      t.text     :comment, null: false
      t.timestamps
      
    end
  end
end
