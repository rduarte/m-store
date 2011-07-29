MStore::Application.routes.draw do
  get "contact" => "contact#index"
  get "specials" => "specials#index"
  get "about" => "about#index"
  get "cart" => "cart#index"

  devise_for :users
  root :to => "home#index"
end
