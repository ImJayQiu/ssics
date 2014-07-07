class CreatePurchaseRequests < ActiveRecord::Migration
	def change
		create_table :purchase_requests do |t|

			# step1: submit purchase request
			t.string :code # purcahse request code
			t.string :p_name # name of item
			t.integer :quantity # quantity of item
			t.string :unit # unit of item
			t.date :request_date # the dead line to purchese 
			t.integer :estimate_price 
			t.string :submit_by # person who submit this purchase request
			t.string :submit_remark

			# step2: waiting for confirm
			t.string :p_confirm # person who confirm this request
			t.string :confirm_remark

			# step3: make a purchase plan after confirming
			t.date :p_plan # plan a date to purchase

			# step4: close the purchase request
			t.string :p_location # where to purchase
			t.integer :p_net_price # the price before vat
			t.integer :p_vat # total vat
			t.integer :p_total_price # total price of the item
			t.string :w_location # warehousing location
			t.string :operator # the person who implement step 3 & 4
			t.string :purchase_remark

			t.timestamps
		end
	end
end
