Rails.application.routes.draw do
  get 'welcome/index'
  root "welcome#index"
  resource :signup, only: %i[ new create ] 
  resource :login, only: %i[ new create ]
  resources :workouts

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
