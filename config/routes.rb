Rails.application.routes.draw do
  get '/accounts', to: 'accounts#index'
  get '/account/:id', to: 'accounts#show'
end
