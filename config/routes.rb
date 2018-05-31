Rails.application.routes.draw do
  resources :meanings
  resources :interactions
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
