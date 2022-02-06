class AppointmentFrame < ApplicationRecord


  belongs_to :appointment


  enum app_frame_status: { reserved: 0, cancel: 1 }

end

