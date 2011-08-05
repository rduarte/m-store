class ProductController < ApplicationController
  def show
    @product = Product.find(params[:id])
    set_meta_tags :title => %[#{@product.name} | #{t("titles.product")}],
                  :description => "",
                  :keywords => ""    
    
    breadcrumbs.add "titles.product"
    breadcrumbs.add @product.name
  end

end