Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/routines" => "routine#index"
  post "/routines" => "routine#create"
  get "/routines/:id" => "routine#show"
  patch "/routines/:id" => "routine#update"
  delete "/routines/:id" => "routine#destroy"

  get "/workouts" => "workouts#index"
  get "/workouts/:id" => "workouts#show"
  post "/workouts" => "workouts#create"
  delete "/workouts/:id" => "workouts#destroy"

  get "/equipment" => "equipment#index"
  post "/userequipment" => "userequip#create"
  delete "/userequipment/:id" => "userequip#destroy"

  get "/exercises" => "exercise#index"
  get "/exercises/:id" => "exercise#show"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/votes" => "user_votes#index"
  get "/votes/:id" => "user_votes#show"
  post "/votes" => "user_votes#create"
  patch "/votes/:id" => "user_votes#update"
  delete "/votes/:id" => "user_votes#destroy"

  get "/favorites" => "user_favorite_workouts#index"
  post "/favorites" => "user_favorite_workouts#create"
  delete "/favorites/:id" => "user_favorite_workouts#destroy"
end
