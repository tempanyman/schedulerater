Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/create', to: "schedule_reviews#create"
  #get 'create',
  get '/new', to: "schedule_reviews#new"
end
