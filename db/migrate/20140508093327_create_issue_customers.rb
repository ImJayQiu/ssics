class CreateIssueCustomers < ActiveRecord::Migration
  def change
    create_table :issue_customers do |t|
      t.string :code
      t.string :c_name
      t.string :c_name2
      t.string :c_address
      t.string :area
      t.string :province
      t.string :city
      t.string :c_type
      t.string :p_name
      t.string :email
      t.string :phone
      t.string :fax
	  t.string :remark
	  t.string :industry
	  t.float :price
	  t.float :price2
      t.timestamps
    end
  end
end
