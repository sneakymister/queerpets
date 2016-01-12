Rails.application.routes.draw do

  root 'shelters#index'

  resources :shelters do
  	
    resources :animals do 
    	get '/adopt' => 'animals#adopt'
    end
    resources :clients
  end
  
end