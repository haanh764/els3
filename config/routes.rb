Rails.application.routes.draw do
  resources :users
  resources :sessions,      only: [:new, :create, :destroy]

  root "static_pages#home"
  get "/signup" => "users#new"
  get "/signin" => "sessions#new"
  get "/help" => "static_pages#help"
  get "/about" => "static_pages#about"
end
