Rails.application.routes.draw do
  resources :orders
  resources :aaas
  post '/get_log', to: 'aaas#get_log'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
