SummitCrest::Application.routes.draw do
  resources :manufacturers

  root to: "manufacturers#index"
end
