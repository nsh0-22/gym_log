Rails.application.routes.draw do
  get 'signups/new'
  resources :workouts
  root "workouts#index"
  resource :signup, only: %i[ new create ] 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
