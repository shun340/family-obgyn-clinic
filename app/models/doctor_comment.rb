class DoctorComment < ApplicationRecord
  
  belongs_to :admin
  belongs_to :appointment
  
end
