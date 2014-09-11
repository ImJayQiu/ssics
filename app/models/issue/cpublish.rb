#coding: utf-8

class Issue::Cpublish < ActiveRecord::Base

	belongs_to :publish, foreign_key: "publish_id", class_name: "Issue::Publish"

end
