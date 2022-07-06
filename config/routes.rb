Rails.application.routes.draw do

  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get 'users/index' => "users#index"
  get "users/:id" => "users#show"
  get "signup" => "users#new" 
  post "users/create" => "users#create"

  get '/' => "home#top"

  resources :photos

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
