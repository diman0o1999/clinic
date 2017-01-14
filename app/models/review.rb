class Review < ApplicationRecord
  belongs_to :user

  validates_presence_of :text_reviews, message: 'Заполните поле!'
  validates_length_of :text_reviews, minimum: 5, message: 'минимальная длина 5 символов'
  validates_format_of :text_reviews, with: /[\u0410-\u044F]+/i, message: 'пишите русскими буквами!'
end