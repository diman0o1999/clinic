class MainController < ApplicationController
  def index
    #выбираем все изображения с лицензиями
    @images_lic = Dir.glob("app/assets/images/pictures/lic/*.jpg")
    #выбираем все изображения для слайдера
    @images_slider = Dir.glob("app/assets/images/pictures/slider_main/*.jpg")

    @form = Form.new
    @filials = Filial.all
  end
end
