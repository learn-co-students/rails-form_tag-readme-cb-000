Rails.application.routes.draw do
  resources :posts, only: [:index, :new]
  resources :posts, only: [:index, :new, :create]
end
