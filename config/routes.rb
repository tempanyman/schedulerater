Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'course/index', to: 'courses#index'
  get 'course/new', to: 'courses#new'
  post 'course/create', to: 'course#create'
  get 'course/edit/:id', to: 'course#edit'
  get 'course/:id', to: 'courses#show'
end
