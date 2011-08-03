class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_categories  

  def load_categories
    @categories = Category.root.self_and_siblings if Category.root.present?
    @categories ||= []
  end

end
