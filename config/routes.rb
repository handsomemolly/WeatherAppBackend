Rails.application.routes.draw do
  resources :users, only: [:create, :update, :destroy, :show, :index]
  get 'user_locations/render_request', to: 'user_locations#render_request'
  post '/login', to: 'users#login'
  resources :user_locations
  resources :locations

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
