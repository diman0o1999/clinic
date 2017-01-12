FactoryGirl.define do
  factory :user do
    user_name "Тестовое имя"
    surname "Тестовая фамилия"
    patronymic "Тестовое отчество"
    email "user@example.com"
    password "qwerty"
    password_confirmation "qwerty"
    role_id 2
  end
  factory :form do
    form_name "Тестовое имя"
    telephone 89110907082
    filial_id 2
  end
  factory :medic do
    post1 "Должность"
    about "Тестовая информация о враче, его дипломы, заслуги, опыт работы."
  end
  factory :review do
    text_reviews "Тестовый отзыв от пациента"
  end
  factory :question do
    text_question "Тестовый вопрос от пациента"
  end
  factory :patient do
    tel_number 89110907082
  end
end