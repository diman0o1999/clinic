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
end