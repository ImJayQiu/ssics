
#coding: utf-8

class Issue::Province < ActiveRecord::Base
	belongs_to :area, foreign_key: "area_id", class_name: "Issue::Area" 
	has_many :cities, dependent: :destroy, class_name: "Issue::City"

	accepts_nested_attributes_for :cities, allow_destroy: true 
end
