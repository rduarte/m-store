class CartController < ApplicationController
  def index
    set_meta_tags :title => t("titles.cart"),
                  :description => "",
                  :keywords => ""

    breadcrumbs.add "titles.cart"
  end

end
