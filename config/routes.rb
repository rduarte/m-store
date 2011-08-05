MStore::Application.routes.draw do
  localized(I18n.available_locales, :verbose => false) do
    match 'contact' => 'contact#index', :as  => :contact
    match 'product/:id' => 'product#show', :as  => :product
    match 'specials' => 'specials#index', :as  => :specials
    match 'about' => 'about#index', :as  => :about
    match 'cart' => 'cart#index', :as  => :cart
    resources :categories
  end

  devise_for :users
  root :to => "home#index"
end
