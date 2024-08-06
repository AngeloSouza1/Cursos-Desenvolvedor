Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  
  # Defines the root path route ("/")
  root "home#index"

  get "/clientes", to:"clientes#index"
  get "/clientes/:id", to: "clientes#show"
  post "/clientes", to: "clientes#create"
  delete "/clientes/:id", to: "clientes#destroy"
  match "/clientes/:id", to: 'clientes#update', via: [:patch, :put]

end
