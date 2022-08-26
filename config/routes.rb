Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/workouts" => "workout_exercise#index"
  post "/workouts" => "workout_exercise#create"
  patch "/workouts/:id" => "workout_exercise#update"
end
