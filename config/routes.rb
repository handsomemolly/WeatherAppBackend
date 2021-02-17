Rails.application.routes.draw do
  get 'user_locations/render_request', to: 'user_locations#render_request'
  post '/login', to: 'users#login'
  resources :user_locations
  resources :locations
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
