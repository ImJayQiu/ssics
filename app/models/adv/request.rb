#coding: utf-8

class Adv::Request < ActiveRecord::Base

	has_many :pdates, dependent: :destroy, class_name: "Adv::Pdate"
	has_many :finaldesigns, dependent: :destroy, class_name: "Adv::Finaldesign"
	has_many :originalsources, dependent: :destroy, class_name: "Adv::Originalsource"


	accepts_nested_attributes_for :pdates, 
		allow_destroy: true 
#		reject_if: proc { |a| a[:p_date].blank? } 

	accepts_nested_attributes_for :finaldesigns, 
		allow_destroy: true, 
		reject_if: proc { |a| a[:final].blank? } 

	accepts_nested_attributes_for :originalsources, 
		allow_destroy: true, 
		reject_if: proc { |a| a[:image].blank? } 

end
