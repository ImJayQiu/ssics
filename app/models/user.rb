#coding: utf-8

class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :trackable, :validatable, :timeoutable

	validates_uniqueness_of :email


	has_attached_file :avatar, 
		:styles => { :medium => "200x200>", :thumb => "50x50>" }, 
		:default_url => "/system/users/avatars/missing/:style/missing.png"

	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) {
			|u| u.permit(:name, 
						 :email, 
						 :password, 
						 :password_confirmation, 
						 :remember_me) 
		}

		devise_parameter_sanitizer.for(:sign_in) {
			|u| u.permit(:login, 
						 :name, 
						 :email, 
						 :password, 
						 :remember_me) 
		}
		devise_parameter_sanitizer.for(:account_update) {
			|u| u.permit(:name, 
						 :email, 
						 :password, 
						 :password_confirmation, 
						 :current_password)
		}
	end

end
