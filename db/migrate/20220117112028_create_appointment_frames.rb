class CreateAppointmentFrames < ActiveRecord::Migration[5.2]
  def change
    create_table :appointment_frames do |t|
      
      t.integer  :appointment_id, null: false
      t.date     :day, null: false
      t.string   :time, null: false
      t.datetime :start_time, null: false
      t.timestamps
      
    end
  end
end
