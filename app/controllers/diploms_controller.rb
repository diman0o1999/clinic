class DiplomsController < ApplicationController
  def index
    @filials = Filial.all
    #только те врачи, у которых есть сертификаты
    @medics = Medic.select("id","name").distinct.joins(:diploms).order(:id)
  end

  def select_diploms
    @images_diploms = Medic.find(params[:id]).diploms.pluck(:file)
      respond_to do |format|
        format.json { render json: @images_diploms }
    end
  end
end