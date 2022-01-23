class Public::AppointmentFramesController < ApplicationController
  before_action :authenticate_patient!

  def index
    @appointment_frames = AppointmentFrame.all.where("day >= ?", Date.current).where("day < ?", Date.current >> 3).order(day: :desc)
  end

  def new
    @appointment_frame = AppointmentFrame.new
    @day = params[:day]
    @time = params[:time]
    @start_time = DateTime.parse(@day + " " + @time + " " + "JST")
    message = AppointmentFrame.check_appointment_frame_day(@day.to_date)
    if !!message
      redirect_to @appointment_frame, flash: { alert: message }
    end
  end

  def show
    @appointment_frame = AppointmentFrame.find(params[:id])
  end

  def create
    @appointment_frame = AppointmentFrame.new(appointment_frame_params)
    if @appointment_frame.save
      redirect_to appointment_frame_path @appointment_frame.id
    else
      render :new
    end
  end

  def destroy
    @appointment_frame = AppointmentFrame.find(params[:id])
    if @appointment_frame.destroy
      redirect_to patient_path(current_patient.id), flash: { success: "予約を削除しました" }
    else
      render :show, flash: { error: "予約の削除に失敗しました" }
    end
  end

  private
  def appointment_frame_params
    params.require(:appointment_frame).permit(:day, :time, :patient_id, :start_time)
  end
end