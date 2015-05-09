Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = false
  config.assets.raise_runtime_errors = true
  # Log to environment log file, keep 7, max size 100mb
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)
  config.assets.logger = false
  config.logger = ActiveSupport::TaggedLogging.new(Logger.new(Rails.root.join("log", Rails.env + ".log"), 7, 10457600))
  config.lograge.enabled = true
end
