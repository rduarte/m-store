class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_categories  
  before_filter :add_initial_breadcrumbs
  before_filter :add_site_name
  
  def load_categories
    @categories = Category.root.self_and_siblings if Category.root.present?
    @categories ||= []
  end
  
  private
  def add_initial_breadcrumbs
    breadcrumbs.add t('titles.home'), root_path
  end
  def add_site_name
    set_meta_tags :site => "m-store"
  end

end
