class Question < ApplicationRecord
  belongs_to :medic
  belongs_to :patient

  validates_presence_of :text_question, :message => "Заполните поле!"
  validates_format_of :text_question, :with => /[\u0410-\u044F]+/i, :message => "пишите русскими буквами!"
end