class MedicsController < ApplicationController
  def index
    @filials = Filial.all
    @form = Form.new
    @medic_mark = Mark_medic.new
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

  def mark

  end


end