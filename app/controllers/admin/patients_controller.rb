class Admin::PatientsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @patients = Patient.all
  end
  
  def show
    @patient = Patient.find(params[:id])
  end
  
  def edit
    @patient = Patient.find(params[:id])
  end
  
  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      flash[:notice] = "会員情報を更新しました。"
      redirect_to admin_patient_path
    else
      render 'edit'
    end
  end

  
  private
  
    def patient_params
      params.require(:patient).permit(
        :email,
        :encrypted_password,
        :last_name,
        :first_name,
        :last_name_kana,
        :first_name_kana,
        :age,
        :phone_number,
      )
    end
  
end
