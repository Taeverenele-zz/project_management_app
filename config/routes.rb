Rails.application.routes.draw do
  get '/projects', to: 'projects#index'
  get '/projects/new', to: 'projects#new'
  get '/projects/:id', to: 'projects#show'
  # get '/projects/:id', to: 'projects#show'
  # post '/projects', to: 'projects#create'
end
