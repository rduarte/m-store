require "rails_admin/adapters/active_record"

module RailsAdmin::Adapters::ActiveRecord
  def get(id)
    if object = model.find(id)
      RailsAdmin::AbstractObject.new object
    end
  end
end

RailsAdmin.config do |config|
  config.model Category do
    exclude_fields :lft, :rgt, :cached_slug
  end
  config.model Product do
    exclude_fields :cached_slug
  end
end
