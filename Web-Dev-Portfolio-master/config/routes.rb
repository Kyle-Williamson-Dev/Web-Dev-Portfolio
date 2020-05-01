Rails.application.routes.draw do
  resources :about
  resources :projects
  resources :contacts, only: [:new, :create]
  get "/", to: "homepage#home", as: "root"
  root "about#index"
end
