class LicensesController < ApplicationController
  def index
    @filials = Filial.all

    @images_pioner = Dir.glob("app/assets/images/pictures/all-licenses/pioner/*.jpg")
    @images_bolhev = Dir.glob("app/assets/images/pictures/all-licenses/bolhev/*.jpg")
    @images_lenin = Dir.glob("app/assets/images/pictures/all-licenses/lenin/*.jpg")
    @images_iso = Dir.glob("app/assets/images/pictures/all-licenses/iso/*.jpg")
    @images_sertific = Dir.glob("app/assets/images/pictures/all-licenses/sertific/*.jpg")
  end
end