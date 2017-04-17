Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/guests', to: 'guests#index', as: 'guests'
  get '/guests/:id', to: 'guests#show', as: 'guest'


  get '/episodes/', to: 'episodes#index', as: 'episodes'
  get '/episodes/:id', to: 'episodes#show', as: 'episode'

  get '/appearances/new', to: 'appearances#new', as: 'new_appearance'
  post '/appearances', to: 'appearances#create', as: 'create_appearance'

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'start_login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/welcome', to: 'sessions#index', as: 'home'

  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create', as: 'create_user'

end
