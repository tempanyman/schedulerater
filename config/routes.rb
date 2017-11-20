Rails.application.routes.draw do
  devise_for :users#, :controllers => { registrations: 'registrations' }
  resources :users, :schedule_reviews, :class_reviews
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :class_reviews
  resources :courses
end
