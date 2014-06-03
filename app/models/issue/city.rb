
#coding: utf-8

class Issue::City < ActiveRecord::Base
	belongs_to :province, foreign_key: "province_id", class_name: "Issue::Province" 
end
