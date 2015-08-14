Rails.application.routes.draw do




  resources :reservations
  get '/welcome', to: 'welcome#index'
  post '/welcome', to: 'welcome#new'
  get '/details', to: 'reservations#new'
  # get '/confirm', to: 'reservations#confirm'
  post '/details', to: 'reservations#create'
  get '/done/:reservation_id', to: 'reservations#show'

end
