Rails.application.routes.draw do
  devise_for :admins
  resources :bookings
  resources :timeslots
  devise_for :users
  resources :courses
  resources :faculties
  resources :subjects
  resources :rooms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'

  
end
