Rails.application.routes.draw do
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "/support", to: "static_pages#support"

  root to: "static_pages#home"
end
