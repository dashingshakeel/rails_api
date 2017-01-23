Rails.application.routes.draw do
  scope '/api' do 
    scope '/users' do 
      put '/' => 'users#new'
      post '/' => 'users#create'
    end
    get 'emails' => 'users#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
