Rails.application.routes.draw do
  get 'secrets/new'

  post 'sessions/create'

  post 'sessions/destroy'

  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'secrets/show'

end
