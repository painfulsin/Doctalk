Rails.application.routes.draw do

 root 'welcome#index'
  get "users/check_email"=>"users#check_email"
  get 'sign_out', to: 'sessions#destroy', as: 'sign_out'
  get "users/check_username"=>"users#check_username"
  get "sessions/check_username"=>"sessions#check_username"
  resources :users, except: :show
  resources :sessions, except: :show
  resources :doctors
end