SummitCrest::Application.routes.draw do
  # Root
  root to: 'home#index'
  
  # About
  get '/about' => 'about#index', as: :about
  
  # Contact
  get "contact" => 'contact#index', as: :contact
  post "contact/send_message"
  get "contact/thank_you"
  
  # Products
  namespace :products do
    root to: 'base#index'
  end

  # Support
  namespace :support do
    root to: 'base#index'
  end
end
