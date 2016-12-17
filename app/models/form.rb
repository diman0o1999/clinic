class Form < ApplicationRecord
  validates_presence_of :name, :telephone, :filial, :message => "Заполните поле!"
  validates_length_of :name, :minimum => 4, :message => "Минимальная длина 4 символа!"
  validates_format_of :telephone, :with => /\A((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}\z/, :message => "Некорректный номер!"
end