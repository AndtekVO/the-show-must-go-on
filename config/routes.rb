Rails.application.routes.draw do
  get 'interact/post'

  root :to => "dashboard#index"

  resources :meanings
  resources :interactions
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
