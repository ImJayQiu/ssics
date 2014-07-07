#coding: utf-8

module General
	ROLES = %w[admin issue advertising design layout purchase]
  def self.table_name_prefix
    'general_'
  end
end
