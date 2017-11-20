Rails.application.routes.draw do
  devise_for :users#, :controllers => { registrations: 'registrations' }
  resources :users, only: [:index, :show]
  resources :schedule_reviews, only: [:show, :new, :edit, :create, :update, :destroy]
  resources :class_reviews
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
