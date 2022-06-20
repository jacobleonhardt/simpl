Rails.application.routes.draw do
  namespace :api do
    namespace :beta do
      resources :lessons
      resources :users
    end
  end
end
