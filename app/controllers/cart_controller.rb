class CartController < ApplicationController
  def index
    breadcrumbs.add "titles.cart"
  end

end
