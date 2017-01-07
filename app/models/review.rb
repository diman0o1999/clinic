class Review < ApplicationRecord
  belongs_to :user

  validates_presence_of :text_reviews, :message => "Заполните поле!"
  validates_format_of :text_reviews, :with => /[\u0410-\u044F]+/i, :message => "Пишите русскими буквами!"
end