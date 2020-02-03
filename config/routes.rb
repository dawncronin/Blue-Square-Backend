Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :resorts
  resources :reviews
  resources :photos
  resources :questions
  resources :answers
  resources :answer_likes
  resources :review_likes
  resources :saved_resort

  post '/login', to: 'auth#create'
  get '/current_user', to: 'auth#show'

end
