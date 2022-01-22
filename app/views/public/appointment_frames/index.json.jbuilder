json.array!(@appointment_frames) do |appointment_frame|
  json.extract! appointment_frame, :id
  json.start appointment_frame.start_time
  json.end appointment_frame.end_time
end