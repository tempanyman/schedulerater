Rails.application.routes.draw do
  devise_for :users#, :controllers => { registrations: 'registrations' }
  resources :users, only: [:index, :show]
  resources :schedule_reviews, only: [:show, :new, :edit, :create, :update, :destroy]
  resources :class_reviews
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :class_reviews
  resources :courses
  get '/search/:search_term', to: 'class_reviews#search', as: 'search'
  post '/search', to: 'class_reviews#search_redirect', as: 'search_redirect'
end
