module Admin::AppointmentFramesHelper
  
  def times
    times = ["9:00",
             "9:30",
             "10:00",
             "10:30",
             "11:00",
             "11:30",
             "13:00",
             "13:30",
             "14:00",
             "15:00",
             "15:30",
             "16:00",
             "16:30"]
  end
  
  def check_appointment_frame(appointment_frames, day, time)
    result = false
    appointment_frames_count = appointment_frames.count
    # 取得した予約データにdayとtimeが一致する場合はtrue,一致しない場合はfalseを返します
    if appointment_frames_count > 1
      appointment_frames.each do |appointment_frame|
        result = appointment_frame[:day].eql?(day.strftime("%Y-%m-%d")) && appointment_frame[:time].eql?(time)
        return result if result
      end
    elsif appointment_frames_count == 1
      result = appointment_frames[0][:day].eql?(day.strftime("%Y-%m-%d")) && appointment_frames[0][:time].eql?(time)
      return result if result
    end
    return result
  end
  
end
