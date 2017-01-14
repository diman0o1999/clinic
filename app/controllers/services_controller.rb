class ServicesController < ApplicationController

  def therapy
    @form = Form.new
    @filials = Filial.all
    @images_equips = Dir.glob('app/assets/images/pictures/equips_service/*.jpg')
    @therapy_price = select_price(1)
    @therapy_medics = select_medics(1)
  end

  def prosthetics
    @form = Form.new
    @filials = Filial.all
    @images_equips = Dir.glob('app/assets/images/pictures/equips_service/*.jpg')
    @prosthetics_price = select_price(3)
    @prosthetics_medics = select_medics(8)
  end

  def surgery

  end

  def periodontics

  end

  def orthodontics

  end

  def children

  end

  def radiology

  end

  def implants

  end

  def anesthesia

  end

  def aesthetic

  end



  private

  def select_price(num)
    Departament.find(num).price.order(:id)
  end

  def select_medics(num)
    Departament.find(num).medics.left_outer_joins(:user).order(:id).select(
        'medics.id',
        'medics.avatar',
        'users.surname',
        'users.patronymic',
        'users.user_name',
        'medics.post1',
        'medics.post2',
        'medics.post3',
        'medics.status_medic')
  end









end