Rails.application.routes.draw do
  resources :forms
  resources :contacts
  resources :actions
  resources :equips
  resources :abouts
  resources :licenses
  resources :diploms

  root 'main#index'

  post '/diploms/:id', to: 'diploms#select_diploms'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
