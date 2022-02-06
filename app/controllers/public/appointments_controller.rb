class Public::AppointmentsController < ApplicationController
  before_action :authenticate_patient!

  def new
    @appointment = Appointment.new
    @patient = current_patient
    @appointment.build_appointment_frame
  end
  
  def detail
    session[:appointment_frame_attributes_step1] = appointment_params[:appointment_frame_attributes]
    @appointment = Appointment.new
    @patient = current_patient
    @appointment.build_appointment_frame
  end
 
  def confirm
    @appointment = Appointment.new(appointment_params)
    @patient = current_patient
    @appointment.build_appointment_frame
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
    params.require(:appointment).permit(:examination_type, :counseling_title, :counseling_detail, :examination_status, appointment_frame_attributes: [:id, :day, :time, :start_time])
  end

end