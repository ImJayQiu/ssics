#coding: utf-8
#
class Ability

	include CanCan::Ability

	def initialize(user)
		# Define abilities for the passed in user here. For example:
		#
		user ||= User.new # guest user (not logged in)

		if user.role == "admin"
			can :manage, :all
		end
		
		if user.role == "issue"
			can :manage, :issue_areas
			can :manage, :issue_customers
			can :manage, :issue_customer_types
		end	

		if user.role == "design"
		end

		if user.role == "layout"

		end
	end
end
