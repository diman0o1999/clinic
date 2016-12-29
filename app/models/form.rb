class Form < ApplicationRecord
  belongs_to :filial

  validates_presence_of :form_name, :telephone, :filial, :message => "Заполните поле!"
  validates_length_of :form_name, :minimum => 3, :message => "Минимальная длина 3 символа!"
  validates_format_of :form_name, :with => /[\u0410-\u044F]+/i, :message => "Пишите русскими буквами!"
  validates_format_of :telephone, :with => /\A((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}\z/, :message => "Некорректный номер!"
end