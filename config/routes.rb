Rails.application.routes.draw do
  scope path: ApplicationResource.endpoint_namespace, defaults: { format: :jsonapi } do
    mount VandalUi::Engine, at: '/vandal'
    # your routes go here
  end
  ActiveAdmin.routes(self)
  root :to => "courses#index"
  resources :bookmarks
  resources :posts
  resources :sessions
  resources :comments
  resources :users
  resources :professors
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
