SummitCrest::Application.routes.draw do
  # Root
  root to: 'manufacturers#index'
  
  # About
  get '/about' => 'about#index', as: :about
  
  # Contact
  get "contact" => 'contact#index', as: :contact
  post "contact/send_message"
  get "contact/thank_you"
  
  # Sessions
  get '/sign_in' => 'sessions#new', as: :sign_in
  get '/sign_out' => 'sessions#destroy', as: :sign_out
  
  # Resources
  resources :users, :sessions
  resources :manufacturers do
    collection { post :sort }
  end
  
  # Support
  namespace :support do
    root to: 'base#index'
  end
end
