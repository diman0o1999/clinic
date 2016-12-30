class PhysiciansController < ApplicationController

  def edit

    #все филиалы
    @filials = Filial.all

    #все отделения
    @departaments = Departament.all

    @medic = Medic.new
    @medic_post1 = Medic.find_by(user_id: params[:id]).post1
    @medic_post2 = Medic.find_by(user_id: params[:id]).post2
    @medic_post3 = Medic.find_by(user_id: params[:id]).post3
    @medic_daywork1 = Medic.find_by(user_id: params[:id]).daywork1
    @medic_daywork2 = Medic.find_by(user_id: params[:id]).daywork2
    @medic_daywork3 = Medic.find_by(user_id: params[:id]).daywork3
    @medic_about = Medic.find_by(user_id: params[:id]).about

  end

  #обновляем доп.инфу о враче
  def update
    @medic = Medic.find_by(user_id: params[:id])
    if @medic.update_attributes(medic_params)
      flash[:success] = "Профиль обновлен!"
      redirect_to current_user
    else
      render 'edit'
    end
  end



  private

  def medic_params
    params.require(:medic).permit(:user_id, :foto, :post1, :post1, :post2, :post3, :daywork1, :daywork2, :daywork3, :about, :filials, :departaments)
  end



end