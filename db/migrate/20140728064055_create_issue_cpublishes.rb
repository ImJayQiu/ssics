class CreateIssueCpublishes < ActiveRecord::Migration
	def change
		create_table :issue_cpublishes do |t|
			t.integer :publish_id
			t.string  :c_code
			t.integer :quantity
			t.integer :free_copy

			t.timestamps
		end
	end
end
