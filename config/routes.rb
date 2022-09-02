Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/routines" => "workout_exercise#index"
  post "/routines" => "workout_exercise#create"
  patch "/routines/:id" => "workout_exercise#update"

  get "/workouts" => "routine#index"
  post "/workouts" => "routine#create"
end
