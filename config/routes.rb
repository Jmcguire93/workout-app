Rails.application.routes.draw do
  ## Users

  get "/users" => "users#index"
  post "/users" => "users#create"

  ## Exercises

  get "/exercises" => "exercises#index"
  get "/exercises/:id" => "exercises#show"
  post "/exercises" => "exercises#create"
  patch "/exercises/:id" => "exercises#update"
  delete "/exercises/:id" => "exercises#destroy"







  ## Workouts
end
