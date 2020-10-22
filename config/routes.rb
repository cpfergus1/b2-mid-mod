Rails.application.routes.draw do
  get '/mechanics', to: 'mechanics#index'
  get '/parks/:id', to: 'parks#show'
  get '/mechanics/:id', to: 'mechanics#show'
end
