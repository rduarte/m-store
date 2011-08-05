class CategoriesController < ApplicationController
  def index
    breadcrumbs.add "titles.categories"
    @products = Category.all.map { |cat| cat.products }.flatten
    render :show
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.self_and_descendants.map { |cat| cat.products }.flatten
    breadcrumbs.add "titles.categories", categories_url
    @category.self_and_ancestors.each do |category|
      breadcrumbs.add category.name, "#{categories_url}/#{category.friendly_id}"
    end
  end

end
