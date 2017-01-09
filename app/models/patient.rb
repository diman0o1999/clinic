class Patient < ApplicationRecord

  mount_uploader :avatar, AvatarUploader

  belongs_to :user
  has_many :questions

  validates_presence_of :tel_number, :message => "Заполните поле!"
  validates_format_of :tel_number, :with => /\A((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}\z/, :message => "Некорректный номер!"


end