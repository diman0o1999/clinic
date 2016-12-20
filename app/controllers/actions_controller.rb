class ActionsController < ApplicationController
  def index
    @filials = Filial.all

    #выбираем все изображения с акциями
    @images_action = Dir.glob("app/assets/images/pictures/slider_main/*.jpg")
  end
end