Rails.application.routes.draw do
  get '/accounts', to: 'accounts#index'
  get '/accounts/:id', to: 'accounts#show'
  get '/transaction', to: 'transaction#index'
end
