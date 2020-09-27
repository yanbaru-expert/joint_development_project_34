Rails.application.routes.draw do
  resources :users
  resources :messages
  resources :tasks
end
