Rails.application.routes.draw do
 
  scope '/api' do
    # resources :users, only: [:show, :index,:create] , param: :email
    post '/users' => 'users#create'
    get '/users' => 'users#show'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
