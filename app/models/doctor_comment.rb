class DoctorComment < ApplicationRecord
  
  # アソシエーション
  belongs_to :admin
  belongs_to :appointment
  
end
