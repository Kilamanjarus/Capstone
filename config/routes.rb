Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/routines" => "routine#index"
  post "/routines" => "routine#create"
  patch "/routines/:id" => "routine#update"
  delete "/routines/:id" => "routine#destroy"

  get "/workouts" => "workouts#index"
  post "/workouts" => "workouts#create"

  get "/exercises" => "exercise#index"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
