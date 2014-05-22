require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Ssics
	class Application < Rails::Application
		# Settings in config/environments/* take precedence over those specified here.
		# Application configuration should go into files in config/initializers
		# -- all .rb files in that directory are automatically loaded.

		# Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
		# Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
		# config.time_zone = 'Central Time (US & Canada)'
		 config.time_zone = 'Bangkok'
		config.active_record.default_timezone = :local  

		# The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
		# config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
		# config.i18n.default_locale = :de

		#		config.to_prepare do
		#			Devise::SessionsController.layout "index"
		#			Devise::RegistrationsController.layout proc{ |controller| user_signed_in? ? "no-sidebar" : "index" }
		#			Devise::ConfirmationsController.layout "index"
		#			Devise::UnlocksController.layout "index"            
		#			Devise::PasswordsController.layout "index"        
		#		end

	end
end

