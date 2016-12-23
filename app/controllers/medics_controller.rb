class MedicsController < ApplicationController
  def index
    @form = Form.new
    @filials = Filial.all
  end

  def select_medics
    @filial_medics = Filial.find(params[:id]).medics.order(:id)
    respond_to do |format|
      format.json { render json: @filial_medics }
    end
  end

end