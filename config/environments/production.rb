# Settings specified here will take precedence over those in config/environment.rb

# The production environment is meant for finished, "live" apps.
# Code is not reloaded between requests
config.cache_classes = true

# Full error reports are disabled and caching is turned on
config.action_controller.consider_all_requests_local = false
config.action_controller.perform_caching             = true
config.action_view.cache_template_loading            = true

# Use a different logger for distributed setups
# config.logger = SyslogLogger.new
# config.logger = Logger.new(config.log_path, 10, 10.megabytes)

# See everything in the log (default is :info)
config.log_level = :warn

# Use a different cache store in production
# config.cache_store = :mem_cache_store

# Enable serving of images, stylesheets, and javascripts from an asset server
# config.action_controller.asset_host = "http://assets.example.com"

# delivery errors, bad email addresses will be ignored
config.action_mailer.raise_delivery_errors = true
config.action_mailer.delivery_method = :smtp

# Enable threaded mode
# config.threadsafe!