class MedicsController < ApplicationController
  def index
    @filials = Filial.all
    @form = Form.new
    @mark_medic = Mark_medic.new

    #если пациент, то выдергиваем его id
    if role == "Пациент"
      @patient_id = Patient.find_by(user_id: current_user.id).id
    end

  end

  #выборка нужных полей из трех таблиц: филиалы, медики, юзеры
  def select_medics
    @filial_medics = Filial.find(params[:id]).medics.left_outer_joins(:user).order(:id).select(
        'medics.id',
        'medics.avatar',
        'users.surname',
        'users.patronymic',
        'users.user_name',
        'medics.daywork1',
        'medics.daywork2',
        'medics.daywork3',
        'medics.post1',
        'medics.post2',
        'medics.post3',
        'medics.about',
        'medics.raiting',
        'medics.status_medic')

    respond_to do |format|
      format.json { render json: @filial_medics }
    end
  end

  #обрабатываем оценки врачей
  def create

    if role == "Пациент"

      @mark_medic = Mark_medic.new(medic_mark_params)

      respond_to do |format|
        if @mark_medic.save

          #вынимаем все оценки врача, которого оценили
          @all_mark_medic = Mark_medic.where(medic_id: params[:medic_id])

          #сколько всего оценок у данного врача
          @count_mark = Mark_medic.where(medic_id: params[:medic_id]).count

          @sum = 0
          @all_mark_medic.each do |mark|
            #суммируем все оценки
            @sum += mark.mark
          end

          #вычисляем среднюю оценку и округляем до 2-х знаков
          @medium_mark = @sum / @count_mark

          #находим врача и обновляем ему рейтинг
          @medic = Medic.find_by(id: params[:medic_id])

          if @medic.update_attributes(:raiting => @medium_mark)
            format.json { render json: {:mark_medic => @medium_mark, :id => params[:medic_id]} }
          end

        end
      end

    else
      respond_to do |format|
          format.json { render json: {:mark_medic => 'Авторизуйтесь как пациент'}, :status => 422 }
      end
    end

  end

  private

  def medic_mark_params
    params.permit(:mark, :medic_id, :patient_id)
  end


end