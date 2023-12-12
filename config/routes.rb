Rails.application.routes.draw do
  #get 'decrypt_con/DecryptView'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  # root "posts#index"
  get 'decrypt_con/decrypt_view', to: 'decrypt_con#DecryptView'
  post '/decrypt_con/decrypt', to: 'decrypt_con#decrypt'
end
