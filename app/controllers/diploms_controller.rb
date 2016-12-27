class DiplomsController < ApplicationController
  def index
    #только те врачи, у которых есть сертификаты
    @medics = Medic.joins(:user, :diploms).distinct.order(:id).pluck(:name, :id)
  end

  def select_diploms
    @images_diploms = Medic.find(params[:id]).diploms.pluck(:file)
      respond_to do |format|
        format.json { render json: @images_diploms }
    end
  end
end