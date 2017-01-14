class Medic < ApplicationRecord

  mount_uploader :avatar, AvatarUploader

  has_many :diploms
  has_and_belongs_to_many :filials
  has_and_belongs_to_many :departaments
  belongs_to :user
  has_many :questions

  validates_presence_of :post1, :about, message: 'Заполните поле!'
  validates_length_of :post1, minimum: 5, message: 'минимальная длина 5 символов'
  validates_length_of :about, minimum: 50, message: 'минимальная длина 50 символов'
  validates_format_of :post1, :about, with: /[\u0410-\u044F]+/i, message: 'пишите русскими буквами'



end