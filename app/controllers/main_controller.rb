class MainController < ApplicationController
  def index
    @filials = Filial.all
    #выбираем все изображения с лицензиями
    @images_lic = Dir.glob("app/assets/images/pictures/lic/*.jpg")
    #выбираем все изображения для слайдера
    @images_slider = Dir.glob("app/assets/images/pictures/slider_main/*.jpg")

    @form = Form.new
  end

  def about
  end

  def action
    #выбираем все изображения с акциями
    @images_action = Dir.glob("app/assets/images/pictures/slider_main/*.jpg")
  end

  def equip
  end

  def licenses
    @images_pioner = Dir.glob("app/assets/images/pictures/all-licenses/pioner/*.jpg")
    @images_bolhev = Dir.glob("app/assets/images/pictures/all-licenses/bolhev/*.jpg")
    @images_lenin = Dir.glob("app/assets/images/pictures/all-licenses/lenin/*.jpg")
    @images_iso = Dir.glob("app/assets/images/pictures/all-licenses/iso/*.jpg")
    @images_sertific = Dir.glob("app/assets/images/pictures/all-licenses/sertific/*.jpg")
  end

  def contacts
    @filials = Filial.all
    @form = Form.new
  end

end
