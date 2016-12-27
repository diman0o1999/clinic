class MedicsController < ApplicationController
  def index
    @filials = Filial.all
    @form = Form.new
  end

  #выборка нужных полей из трех таблиц: филиалы, медики, юзеры и формирование хэша из полученных данных
  def select_medics
    @filial_medics = Filial.find(params[:id]).medics.joins(:user).order(:id).all.pluck(
        :foto,
        :surname,
        :name,
        :patronymic,
        :daywork1,
        :daywork2,
        :daywork3,
        :post1,
        :post2,
        :post3,
        :about,
        :raiting
    ).map {
        |p| { foto: p[0],
              surname: p[1],
              name: p[2],
              patronymic: p[3],
              daywork1: p[4],
              daywork2: p[5],
              daywork3: p[6],
              post1: p[7],
              post2: p[8],
              post3: p[9],
              about: p[10],
              raiting: p[11] } }

    respond_to do |format|
      format.json { render json: @filial_medics }
    end
  end

end