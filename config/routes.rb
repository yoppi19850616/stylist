Rails.application.routes.draw do
  get 'toppages/index'
  root to: "toppages#index"
end

get "dresses/index"      => "dresses#index" 