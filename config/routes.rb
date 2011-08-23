MStore::Application.routes.draw do
  devise_for :users

  localized(I18n.available_locales, :verbose => false) do
    match 'contact' => 'contact#index', :as  => :contact
    match 'product/:id' => 'product#show', :as  => :product
    match 'cart' => 'cart#index', :as  => :cart
    resources :categories
  end
  match '/:all' => 'pages#index', :constraints => lambda {|req| !(req.path =~ /\A\/admin(\/.*)?\z/)  }

  root :to => "categories#index"
end
