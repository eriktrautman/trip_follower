TripFollower::Application.routes.draw do

  resources :users
  resources :trips, except: [:index]
end
