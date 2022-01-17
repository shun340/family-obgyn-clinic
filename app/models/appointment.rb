class Appointment < ApplicationRecord
  
  # アソシエーション
  has_one  :appointment_frame, dependent: :destroy
  has_many :doctor_comments, dependent: :destroy
  has_many :checks, dependent: :destroy
  
  belongs_to :patient
  
end
