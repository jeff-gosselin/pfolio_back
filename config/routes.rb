Rails.application.routes.draw do
  namespace :api do
  	namespace :v1 do

      post '/login', to: 'auth#create'
      get '/admin', to: 'users#profile'
			resources :users
      resources :projects
      
  	end
  end
end
