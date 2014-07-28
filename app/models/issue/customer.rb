
#coding: utf-8

class Issue::Customer < ActiveRecord::Base

	has_attached_file :map, 
		:styles => { :medium => "200x200>", :thumb => "50x50>" }, 
		:default_url => "/system/issue/customers/maps/missing/:style/missing.png"

	validates_attachment_content_type :map, :content_type => /\Aimage\/.*\Z/


end
