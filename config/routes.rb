Rails.application.routes.draw do

  get '/welcome', to: 'welcome#show'
  post '/welcome', to: 'welcome#create'
  get '/details', to: 'details#new'
  get '/confirm', to: 'details#confirm'
  post '/confirm', to: 'confirm#create'
  get '/done', to: 'done#show'


  # resources :reservations do
  #   # member route for non-restful routes
  # end

end
