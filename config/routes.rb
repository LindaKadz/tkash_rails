Rails.application.routes.draw do
  get '/accounts', to: 'accounts#index'
  get '/accounts/:id', to: 'accounts#show'
  get '/transaction', to: 'transaction#index'
  get '/accounts/edit/:id', to: 'accounts#edit', as: 'account'
  patch '/accounts/:id', to: 'accounts#update'
  put '/accounts/:id', to: 'accounts#update'
  post '/accounts/:id', to: 'accounts#show'
end
