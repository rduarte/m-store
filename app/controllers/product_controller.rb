class ProductController < ApplicationController
  def show
    @product = Product.find(params[:id])
    breadcrumbs.add "titles.product"
    breadcrumbs.add @product.name
  end

end
