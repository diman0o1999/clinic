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

    #id врача, которого обновляем
    @medic_id = Medic.find_by(user_id: params[:id]).id

    #выдергиваем все филиалы в которых работает врач
    @all_fil_medic = Filials_Medic.where(medic_id: @medic_id)
    #удаляем все филиалы
    @all_fil_medic.each do |fil_del|
      Filials_Medic.find_by(medic_id: fil_del.medic_id.to_i).destroy
    end

    #выдергиваем все отделения в которых работает врач
    @all_dep_medic = Departaments_Medic.where(medic_id: @medic_id)
    #удаляем все отделения
    @all_dep_medic.each do |fil_del|
      Departaments_Medic.find_by(medic_id: fil_del.medic_id.to_i).destroy
    end

    #id филиалов, которые он отметил в форме для обновления
    @filial_id = params[:medic][:filials]
    #id отделений, которые он отметил в форме для обновления
    @departament_id = params[:medic][:departaments]

    if !@filial_id.nil?
      #перебираем все отмеченные филиалы и пишем в соединительную таблицу
      @filial_id.each do |fil|
        Filials_Medic.create(:medic_id => @medic_id, :filial_id => fil)
      end
    end

    if !@departament_id.nil?
      #перебираем все отмеченные отделения и пишем в соединительную таблицу
      @departament_id.each do |dep|
        Departaments_Medic.create(:medic_id => @medic_id, :departament_id => dep)
      end
    end


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