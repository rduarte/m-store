#encoding: UTF-8
module ApplicationHelper
  
  def categories(category)
    breadcrumb = ""
    category.self_and_ancestors.each do |menu|
      breadcrumb << " » " << (link_to menu.name, "#{categories_url}/#{menu.friendly_id}")
    end
    return breadcrumb
  end
  
end
