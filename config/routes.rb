TripFollower::Application.routes.draw do

  root to: 'users#index'
  resources :users
  resources :trips, except: [:index]


end
