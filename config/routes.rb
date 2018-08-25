Rails.application.routes.draw do
  root to: "quotes#index"

  resources :quote, only: [:index, :create, :new]
end
