class Public::PatientsController < ApplicationController

  def show
    @patient = current_patient
  end

  def edit
    @patient = current_patient
  end

  def update
  end

end