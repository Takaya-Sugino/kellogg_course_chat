Rails.application.routes.draw do
  resources :posts
  resources :sessions
  resources :comments
  resources :users
  resources :professors
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
