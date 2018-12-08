Rails.application.routes.draw do
  get '/search/free', to: 'search#free'

  get 'users/new'
  resources :bookings
  devise_for :admins
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  resources :courses
  resources :faculties
  resources :subjects
  resources :rooms
  resources :search
  resources :upload
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'


  
end
