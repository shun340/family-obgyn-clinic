class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      
      t.integer  :patient_id, null: false
      t.integer  :examination_type, null: false, default: 0
      t.string   :counseling_title
      t.text     :counseling_detail, null: false
      t.boolean  :examination_status, null: false, default: false
      t.timestamps
      
    end
  end
end
