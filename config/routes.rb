Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :todos do
    resources :items
  end
  post 'auth/login', to: 'authentication#authenticate' #routing for authentication
  post 'signup', to: 'users#create' # routing to signup
end
