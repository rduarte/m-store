require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env) if defined?(Bundler)

module MStore
  class Application < Rails::Application
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = :"pt-BR"
    config.i18n.locale = :"pt-BR" # Heroku hack
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
  end
end
