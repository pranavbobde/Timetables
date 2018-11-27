Rails.application.routes.draw do
  resources :courses
  resources :time_slots
  resources :faculties
  resources :subjects
  resources :rooms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'


end
