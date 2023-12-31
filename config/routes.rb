Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/residentials" => "residentials#index"
  post "/residentials" => "residentials#create"
  get "/residentials/:id" => "residentials#show"
  delete "/residentials/:id" => "residentials#destroy"
end
