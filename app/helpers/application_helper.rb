#encoding: utf-8
module ApplicationHelper
  
  def categories(category)
    breadcrumb = ""
    category.self_and_ancestors.each do |c|
      breadcrumb << %[ » <a href="/products/#{c.friendly_id}">#{c.name}</a>]
    end
    return breadcrumb
  end
  
end
