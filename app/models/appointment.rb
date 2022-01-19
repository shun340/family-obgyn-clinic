class Appointment < ApplicationRecord
  
  
  # アソシエーション
  has_one  :appointment_frame, dependent: :destroy
  has_many :doctor_comments, dependent: :destroy
  has_many :checks, dependent: :destroy
  
  belongs_to :patient
  
  #enum設定
  ##診察種別
  enum examination_type: { first_visit: 0, revisit:1 }
  
end
