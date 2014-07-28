class CreateIssueCpublishes < ActiveRecord::Migration
	def change
		create_table :issue_cpublishes do |t|
			t.integer :issue_publish_id
			t.string  :c_code
			t.integer :quantity

			t.timestamps
		end
	end
end
