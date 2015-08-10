Rails.application.routes.draw do

  get '/welcome', to: 'welcome#show'
  get '/details', to: 'details#new'
  get '/confirm', to: 'confirm#show'
  post '/confirm', to: 'confirm#create'
  get '/done', to: 'done#show'

end
