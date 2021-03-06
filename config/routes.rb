Rails.application.routes.draw do

 root 'welcome#index'
  get "users/check_email"=>"users#check_email"
  get 'sign_out', to: 'sessions#destroy', as: 'sign_out'
  resources :users
  resources :sessions, except: :show
  resources :doctors
  resources :speciality
  resources :healths

  get 'take_appointment' => 'speciality#take_appointment'
  post 'search_appointment' => 'speciality#search_appointment'
  get 'search' => 'speciality#search'
  post 'book' => 'speciality#book'
  get 'graph_rule' => 'speciality#graph_rule'
  get 'patient_detail' => 'speciality#patient_detail'
end