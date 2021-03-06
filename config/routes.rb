Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/choose_outfit/:id', to: 'home#choose_outfit'
  get '/select_location', to: 'home#select_location'
  post '/select_location', to: 'home#select_location'
  get '/map', to: 'map#index'
end
