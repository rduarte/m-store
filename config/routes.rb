MStore::Application.routes.draw do
  get "/cart" => "cart#index"

  devise_for :users
  root :to => "home#index"
end
