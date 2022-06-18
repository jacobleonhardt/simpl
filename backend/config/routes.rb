Rails.application.routes.draw do
  root 'users#index'
  resources :lessons
  resources :users
end
