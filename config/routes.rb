Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # namespace the controllers without affecting the URI
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :todos do
      resources :items
    end
  end

  post 'auth/login', to: 'authentication#authenticate' #routing for authentication
  post 'signup', to: 'users#create' # routing to signup
end

# don't want to have the version number as part of URI(anti-pattern)
# make user of module cope to namespace controllers
# set the version constrainer at the namespace level
# thus this will be applied to all resources within it
# ALSO, defined (v1) as the default version, if version is not provided
# In the event we were to add new versions, 
# they would have to be defined above the default version 
# since Rails will cycle through all routes from top to bottom
# searching for one that matches(till method matches? resolves to true).