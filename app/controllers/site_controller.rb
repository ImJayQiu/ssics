class SiteController < ApplicationController

	skip_before_filter :authenticate_user!, only: :index
	layout :action_layout 

	def index

	end

	def main 
		@notices=General::Notice.where("date<=? AND e_date>=?", Date.today, Date.today )
	end

	private

	def action_layout

		case action_name

		when "index"
			"index"
		end

	end

end
