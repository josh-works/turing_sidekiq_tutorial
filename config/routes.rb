Rails.application.routes.draw do
  root to: "home#show"

  resources :mailers, only: [:create]

  get "/sent", to: "mailers#sent"
  
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

end
