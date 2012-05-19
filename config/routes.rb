Twincrest::Application.routes.draw do
  get "download_types/show"

  get "products/show"

  get "product_lines/index"

  get "product_lines/show"

  get "base/index"

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
    namespace :wavetronix do
      resources :download_types do
        post 'choose', on: :collection
      end
      resources :product_lines do
        post 'choose', on: :collection
        resources :products
      end
      root to: 'base#index'
    end
    root to: 'base#index'
  end
end
