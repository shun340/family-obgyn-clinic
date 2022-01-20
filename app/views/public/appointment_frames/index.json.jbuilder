json.array!(@appointment_frames) do |appointment_frame|
  json.extract! appointment_frame, :id, :title, :body
  json.start appointment_frame.start_time
  json.end appointment_frame.end_time
  json.url appointment_frame_url(appointment_frame, format: :html)
end