class ServicesController < ApplicationController

  def therapy
    @form = Form.new
    @filials = Filial.all
    @images_equips = Dir.glob("app/assets/images/pictures/equips_service/*.jpg")
    @therapy_price = Departament.find(1).price.order(:id)
    @therapy_medics = Departament.find(1).medics.left_outer_joins(:user).order(:id).select(
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

  def prosthetics
    @form = Form.new
    @filials = Filial.all
    @images_equips = Dir.glob("app/assets/images/pictures/equips_service/*.jpg")
    @prosthetics_price = Departament.find(3).price.order(:id)
    @prosthetics_medics = Departament.find(8).medics.left_outer_joins(:user).order(:id).select(
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









end