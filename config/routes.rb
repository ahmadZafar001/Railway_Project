Rails.application.routes.draw do

  resources :discounts
  resources :journeys
  resources :fares
  resources :reservations
  resources :tickets
  resources :passengers
  resources :train_compartments
  resources :trains
  resources :compartments
  resources :routes
  resources :staffs
  resources :stations
  root 'home#index'

end
