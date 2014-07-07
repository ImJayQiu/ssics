#coding: utf-8

class Issue::Area < ActiveRecord::Base
	
	has_many :provinces, dependent: :destroy, class_name: "Issue::Province"
	has_many :cities, through: :provinces, dependent: :destroy, class_name: "Issue::City"


	accepts_nested_attributes_for :provinces, allow_destroy: true 

	accepts_nested_attributes_for :cities, allow_destroy: true 

end
