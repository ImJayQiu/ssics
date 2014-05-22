#coding: utf-8

class Adv::Pdate < ActiveRecord::Base

	belongs_to :request, foreign_key: "request_id", class_name: "Adv::Request"

end
