class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_categories
  before_filter :load_pages
  before_filter :add_initial_breadcrumbs
  before_filter :add_site_name
  before_filter :set_locale 
  
  def set_locale 
    I18n.locale = "pt-BR" || I18n.default_locale 
  end
  
  def load_categories
    @categories = Category.root.self_and_siblings if Category.root.present?
    @categories ||= []
  end
  
  def load_pages
    @pages = Page.order('priority asc, name asc')
  end
  
  private
  def add_initial_breadcrumbs
    breadcrumbs.add t('titles.home'), root_path
  end
  def add_site_name
    set_meta_tags :site => "m-store"
  end

end
