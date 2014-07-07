class SiteController < ApplicationController

	skip_before_filter :authenticate_user!, only: [:index, :weixin, :weixin_mobile]
	layout :action_layout 

	def index

	end

	def main 
		@notices=General::Notice.where("date<=? AND e_date>=?", Date.today, Date.today )
	end

	def presentation
	end

	def weixin
	end

	def weixin_mobile
	end

	private

	def action_layout

		case action_name

		when "index"
			"index"
		when "weixin" 
			"index_no_menu"
		when "weixin_mobile" 
			"index_no_menu"
		else
			"application"
		end

	end

end
