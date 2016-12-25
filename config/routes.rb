Rails.application.routes.draw do
  resources :forms
  resources :contacts
  resources :actions
  resources :equips
  resources :abouts
  resources :licenses
  resources :diploms
  resources :medics
  resources :prices

  root 'main#index'

  post '/diploms/:id', to: 'diploms#select_diploms'
  post '/medics/:id', to: 'medics#select_medics'
  post '/prices/:id', to: 'prices#select_prices'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
