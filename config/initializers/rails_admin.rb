RailsAdmin.config do |config|
  config.model Category do
    exclude_fields :lft, :rgt, :cached_slug
  end
  config.model Product do
    exclude_fields :cached_slug
  end
end
