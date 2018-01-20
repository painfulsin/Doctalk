Rails.application.routes.draw do

  root 'welcome#index'
  get 'sign_out', to: 'sessions#destroy', as: 'sign_out'
  resources :users
  resources :sessions, except: :show
  resources :doctor


end
