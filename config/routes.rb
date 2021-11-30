Rails.application.routes.draw do
  devise_for :users
  get 'toppages/index'
  root to: "toppages#index"
  resources :toppages do
end

get "stylists/index"      => "stylists#index" 
end