Rails.application.routes.draw do
  ## Users

  get "/users" => "users#index"
  post "/users" => "users#create"

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
end
