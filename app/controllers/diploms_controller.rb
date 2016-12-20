class DiplomsController < ApplicationController
  def index
    @filials = Filial.all
    @medics = Medic.all
    @diploms = Diplom.all
  end

  def select_diploms
    @images_diploms = Medic.find(params[:id]).diploms.pluck(:file)
      respond_to do |format|
        format.json { render json: @images_diploms }
    end
  end
end