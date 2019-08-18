Rails.application.routes.draw do
  root to:'sessions#new'
  get 'sessions/show', to:"sessions#show", as: "show_session"
  get 'secrets/show', to: "secrets#show", as: "show_secret"
  get 'sessions/new', to: "sessions#new", as: "new_session"
  post '/sessions', to: "sessions#create"
  post '/sessions', to: "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
