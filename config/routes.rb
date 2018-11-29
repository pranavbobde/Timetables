Rails.application.routes.draw do
  devise_for :users
  resources :bookings
  resources :courses
  resources :time_slots
  resources :faculties
  resources :subjects
  resources :rooms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'

  
end
