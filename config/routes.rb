Rails.application.routes.draw do
  get '/fridges', to: 'fridges#index'
  get '/fridges/new', to: 'fridges#new'
  post '/fridges', to: 'fridges#create'
end
