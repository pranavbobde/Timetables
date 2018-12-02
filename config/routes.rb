Rails.application.routes.draw do
  resources :bookings
  devise_for :admins
  devise_for :users
  resources :courses
  resources :faculties
  resources :subjects
  resources :rooms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'

  
end
