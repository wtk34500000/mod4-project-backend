Rails.application.routes.draw do
  # resources :comments
  get "/videos" => "api/videos#index"
  post "/videos" => "api/videos#create"
  get "/videos/:id" => "api/videos#show"
  # resources :histories
  get '/login' => 'api/users#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
