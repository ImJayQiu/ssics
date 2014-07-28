class AddAttachmentMapToIssueCustomers < ActiveRecord::Migration
  def self.up
    change_table :issue_customers do |t|
      t.attachment :map
    end
  end

  def self.down
    remove_attachment :issue_customers, :map
  end
end
