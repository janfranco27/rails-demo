Rails.application.routes.draw do
  get "user_skills/:user_id" => "user_skills#new", as: :new_user_skills
  resources :users
  resources :skills, only: [:new, :create, :index]
  # resources :user_skills, only: [:new, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
