Rails.application.routes.draw do
  get "/", to: "homepage#home", as: "root"
  root "about#index"
  resources :about
  resources :projects
  resources :contacts, only:[:index, :new, :create]
end
