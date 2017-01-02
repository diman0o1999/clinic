Rails.application.routes.draw do
  resources :forms
  resources :diploms
  resources :medics
  resources :patients
  resources :physicians
  resources :prices
  resources :articles
  resources :reviews
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root 'main#index'

  get '/about',  to: 'main#about'
  get '/action',  to: 'main#action'
  get '/equip',  to: 'main#equip'
  get '/licenses',  to: 'main#licenses'
  get '/contacts',  to: 'main#contacts'

  #формируем страницу дипломы
  post '/diploms/:id', to: 'diploms#select_diploms'

  #формируем страницу врачей
  post '/medics/:id', to: 'medics#select_medics'

  #оцениваем врачей
  post '/medics', to: 'medics#mark'

  #формируем прайс
  post '/prices/:id', to: 'prices#select_prices'

  #регистрация
  get '/signup',  to: 'users#new'

  #добавляем инфу о пациенте или враче
  post '/users/:id',  to: 'users#create_dop_info'

  #обновляем инфу о пациенте
  post '/patients/:id',  to: 'patients#update'

  #обновляем инфу о враче
  post '/physicians/:id',  to: 'physicians#update'

  #вход
  get '/signin',  to: 'sessions#new'
  #выход
  delete '/signout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
