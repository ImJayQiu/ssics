#coding: utf-8

class Issue::Publish < ActiveRecord::Base

	has_many :cpublishes, dependent: :destroy, class_name: "Issue::Cpublish"

	accepts_nested_attributes_for :cpublishes, 
		allow_destroy: true, 
		reject_if: proc { |a| a[:c_code].blank? } 
end
