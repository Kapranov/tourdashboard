require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Tourdashboard
  class Application < Rails::Application
    config.time_zone = 'Kyiv'
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :uk
    config.assets.precompile += %w( vendor/modernizr )
    config.active_record.timestamped_migrations = false

    require Rails.root.join("lib/custom_public_exceptions")
    config.exceptions_app = CustomPublicExceptions.new(Rails.public_path)
  end
end
