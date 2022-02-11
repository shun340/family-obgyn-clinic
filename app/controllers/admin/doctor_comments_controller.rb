class Admin::DoctorCommentsController < ApplicationController
  
  def create
    appointment = Appointment.find(params[:appointment_id])
    comment = current_admin.doctor_comments.new(doctor_comment_params)
    comment.appointment_id = appointment.id
    comment.save
    redirect_to admin_appointment_path(appointment)
  end

  def destroy
  end
  
  private

  def doctor_comment_params
    params.require(:doctor_comment).permit(:comment)
  end
  
end