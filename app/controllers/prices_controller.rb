class PricesController < ApplicationController
  def index
    #только те отделения, у которых есть прайс
    @departaments = Departament.select("id","name").distinct.joins(:price).order(:id)
  end

  def select_prices
    @departament_price = Departament.find(params[:id]).price.order(:id)
    respond_to do |format|
      format.json { render json: @departament_price }
    end
  end

end