RailsAdmin.config do |config|
  config.model Category do
    exclude_fields :lft, :rgt
  end
end
