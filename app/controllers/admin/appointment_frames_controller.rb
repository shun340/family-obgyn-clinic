class Admin::AppointmentFramesController < ApplicationController
  
  def index
    @appointment_frames = AppointmentFrame.all
  end
  
  def update
  end
  
end
