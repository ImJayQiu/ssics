#coding: utf-8

module General
	ROLES = %w[admin-管理员 issue-发行部 advertising-广告部 design-设计部 layout-排版组 purchase-采购部 acc-财会部 rimes]
  def self.table_name_prefix
    'general_'
  end
end
