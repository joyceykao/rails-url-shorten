Rails.application.routes.draw do
  root to: 'addresses#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get '/go/:short', to: 'addresses#show'
    resources :addresses, only: [:new, :create, :index]
end
