MStore::Application.routes.draw do
  get "contact" => "contact#index"
  get "specials" => "specials#index"
  get "about" => "about#index"
  get "cart" => "cart#index"
  get "products" => "products#index"
  get "products/:id" => "products#show"
  get "product/:id" => "product#show"

  devise_for :users
  root :to => "home#index"
end
