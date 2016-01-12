Rails.application.routes.draw do
  root to: "home#show"

  resources :mailers, only: [:create]

end
