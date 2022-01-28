class Public::AppointmentsController < ApplicationController
  before_action :authenticate_patient!

  def new
    @appointment = Appointment.new
    @patient = current_patient
  end

  def confirm
    @appointment = Appointment.new(appointment_params)
    
  end
  
  def create
    @appointment = Appointment.new(appointment_params)
    
    if @appointment.save
      redirect_to my_page_patients_path @appointment.patient_id
    else
      render :new, @appointment
    end
  end

  def index
    
  end

  def show
    
  end
  
  
  private
  
  def appointment_params
    params.require(:appointment).permit(:examination_type, :counseling_title, :counseling_detail, :examination_status).merge(patient_id: current_patient.id)
  end

end