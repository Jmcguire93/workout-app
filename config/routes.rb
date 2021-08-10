Rails.application.routes.draw do
  ## Users

  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  # delete "/users/:id" => "users#destroy"

  ## Sessions

  post "/sessions" => "sessions#create"

  ## Exercises

  get "/exercises" => "exercises#index"
  get "/exercises/:id" => "exercises#show"
  post "/exercises" => "exercises#create"
  patch "/exercises/:id" => "exercises#update"
  delete "/exercises/:id" => "exercises#destroy"

  ## Workouts

  get "/workouts" => "workouts#index"
  get "/workouts/:id" => "workouts#show"
  post "/workouts" => "workouts#create"
  patch "/workouts/:id" => "workouts#update"
  delete "/workouts/:id" => "workouts#destroy"

  ## Workout_exercise
  
  get "/workout_exercises" => "workout_exercises#index"
  get "/workout_exercises/:id" => "workout_exercises#show"
  post "/workout_exercises" => "workout_exercises#create"
  patch "/workout_exercises/:id" => "workout_exercises#update"
  delete "/workout_exercises/:id" => "workout_exercises#destroy"
end
