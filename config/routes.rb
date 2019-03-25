Rails.application.routes.draw do
  # resources :comments
  # get "/videos" => "api/videos#index"
  # # post "/videos" => "api/videos#create"
  # get "/videos/:id" => "api/videos#show"
  # resources :histories
  # post '/login' => 'users#login'
  post "/users" => 'users#create'

  post '/login', to: 'api/auth#create'
  get '/current_user', to: 'api/auth#show'

  post '/histories', to: 'histories#create'

  post '/videos', to: 'videos#create'

  post '/comments', to: 'comments#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
