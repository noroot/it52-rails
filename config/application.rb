require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module It52Rails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'
    config.time_zone = 'Europe/Moscow'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.i18n.available_locales = [:ru]
    config.i18n.default_locale = :ru

    config.responders.flash_keys = [:success, :error]

    # Add concerns to autoload
    config.autoload_paths += ["#{Rails.root}/app/uploaders/concerns"]
    config.autoload_paths += ["#{Rails.root}/app/services"]

    # Mailing host
    config.action_mailer.default_url_options = { host: Figaro.env.mailing_host }
    config.action_mailer.default_options = { from: "robot@#{Figaro.env.mailing_host}" }
    config.action_mailer.smtp_settings = {}
    config.action_mailer.delivery_method = :letter_opener
  end
end
