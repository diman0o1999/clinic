class PatientsController < ApplicationController

  def edit
    @patient = Patient.new
    @patient_tel = Patient.find_by(user_id: params[:id]).tel_number
  end

  #обновляем доп.инфу о пациенте
  def update
    @patient = Patient.find_by(user_id: params[:id])
    if @patient.update_attributes(patient_params)
      flash[:success] = "Профиль обновлен!"
      redirect_to current_user
    else
      render 'edit'
    end
  end



  private

  def patient_params
    params.require(:patient).permit(:tel_number, :foto)
  end



end