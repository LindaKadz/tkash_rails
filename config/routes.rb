Rails.application.routes.draw do
  get '/accounts/:id', to: 'account#index'
end
