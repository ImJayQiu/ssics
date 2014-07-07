#coding: utf-8

class Adv::Originalsource < ActiveRecord::Base

	belongs_to :request, foreign_key: "request_id", class_name: "Adv::Request"

	has_attached_file :image, 
		:styles => { :medium => "200x200>", :thumb => "50x50>" }, 
		:default_url => "/system/users/avatar/missing/:style/missing.png"

	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
