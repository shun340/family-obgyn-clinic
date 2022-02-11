class Admin::AppointmentsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
    @doctor_comment = DoctorComment.new
  end

  def update
    @appointment = Appointment.find(params[:id])

    if @appointment.update(appointment_params)
      flash[:notice] = 'You have updated appointment successfully.'
      redirect_to admin_appointments_path
    else
      render :show
    end
  end


  private

  def appointment_params
    params.require(:appointment).permit(:examination_status)
  end

end
