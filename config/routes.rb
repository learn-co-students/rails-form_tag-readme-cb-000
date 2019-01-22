Rails.application.routes.draw do
  resources :posts
  resources :posts, only: [:index, :new, :create]
end
