Rails.application.routes.draw do

  get '/welcome', to: 'welcome#index'
  post '/welcome', to: 'welcome#new'
  get '/details', to: 'reservations#new'
  get '/confirm', to: 'reservations#confirm'
  post '/confirm', to: 'reservations#create'
  get '/done', to: 'reservations#show'



  # resources :reservations do
  #   # member route for non-restful routes
  # end

end
