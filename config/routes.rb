Rails.application.routes.draw do
  root to: "quotes#index"

  resources :quotes, only: %i[index create new]
end
