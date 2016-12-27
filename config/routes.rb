Rails.application.routes.draw do
  resources :forms
  resources :diploms
  resources :medics
  resources :prices
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root 'main#index'

  get '/about',  to: 'main#about'
  get '/action',  to: 'main#action'
  get '/equip',  to: 'main#equip'
  get '/licenses',  to: 'main#licenses'
  get '/contacts',  to: 'main#contacts'

  post '/diploms/:id', to: 'diploms#select_diploms'
  post '/medics/:id', to: 'medics#select_medics'
  post '/prices/:id', to: 'prices#select_prices'

  get '/signup',  to: 'users#new'

  get '/signin',  to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
