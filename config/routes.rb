Rails.application.routes.draw do
  resources :users

  root "static_pages#home"
  get "/signup" => "users#new"
  get "/help" => "static_pages#help"
  get "/about" => "static_pages#about"
end
