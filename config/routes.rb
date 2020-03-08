Rails.application.routes.draw do
  get "/", to: "homepage#home", as: "root"
  root "about#index"
  resources :about, :projects, :contact
end
