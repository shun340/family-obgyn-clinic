class CreateAppointmentFrames < ActiveRecord::Migration[5.2]
  def change
    create_table :appointment_frames do |t|
      
      t.integer  :appointment_id, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.integer  :app_frame_status, null:false, default: 0
      t.timestamps
      
    end
  end
end
