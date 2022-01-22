class Public::AppointmentFramesController < ApplicationController

  def index
    @appointment_frames = AppointmentFrame.all
  end
  
  def create
  end

  def edit
  end

  def update
  end

end