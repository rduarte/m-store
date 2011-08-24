class CategoriesController < ApplicationController
  def index
    set_meta_tags :title => t("titles.categories"),
                  :description => "",
                  :keywords => ""

    breadcrumbs.add "titles.categories"
    @products = Category.all.map { |cat| cat.products }.flatten.sort_by(&:name)
    render :show
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.self_and_descendants.map { |cat| cat.products }.flatten.sort_by(&:name)
    breadcrumbs.add "titles.categories", categories_url
    self_and_ancestors = []
    @category.self_and_ancestors.each do |category|
      breadcrumbs.add category.name, "#{categories_url}/#{category.friendly_id}"
      self_and_ancestors << category.name
    end
    set_meta_tags :title => %[#{self_and_ancestors.reverse.join(" | ")} | #{t("titles.categories")}],
                  :description => "",
                  :keywords => ""
  end

end
