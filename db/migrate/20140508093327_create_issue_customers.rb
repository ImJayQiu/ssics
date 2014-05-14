class CreateIssueCustomers < ActiveRecord::Migration
  def change
    create_table :issue_customers do |t|
      t.string :code
      t.string :c_name
      t.string :c_address
      t.string :area
      t.string :c_type
      t.string :p_name
      t.string :email
      t.string :phone
      t.string :fax
	  t.string :remark
      t.timestamps
    end
  end
end
