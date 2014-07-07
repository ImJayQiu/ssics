class ApplicationController < ActionController::Base


	before_action :authenticate_user!
	before_action :set_locale

	def set_locale
		I18n.locale = params[:locale] || I18n.default_locale
	end

	def default_url_options(options={})
		logger.debug "default_url_options is passed options: #{options.inspect}\n"
		{ locale: I18n.locale }
	end

	def after_sign_in_path_for(resource)
		site_path("main")
	end

	def after_sign_out_path_for(resource_or_scope)
		root_path
	end

	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) << :name
		devise_parameter_sanitizer.for(:account_update) << [:name, :employer_id, :department, :phone_no]
	end


end
