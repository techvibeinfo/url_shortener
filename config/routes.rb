Rails.application.routes.draw do
  resources :urls
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  post  '/addurl',   to: 'urls#addurl'
  get '/:shorturl', to: 'urls#show_url'
   root "urls#index"
end
