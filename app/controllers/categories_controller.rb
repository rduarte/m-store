class CategoriesController < ApplicationController
  def index
    @products = Category.all.map { |cat| cat.products }.flatten
    render :show
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.self_and_descendants.map { |cat| cat.products }.flatten
  end

end
