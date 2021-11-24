Rails.application.routes.draw do
  get 'toppages/index'
  root to: "toppages#index"
  resources :toppages do
end

get "stylists/index"      => "stylists#index" 
end