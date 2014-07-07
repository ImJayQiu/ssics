class CreateAdvRequests < ActiveRecord::Migration
  def change
    create_table :adv_requests do |t|
      t.string :code
      t.string :c_name
      t.string :a_size
      t.string :a_type
      t.string :article
      t.string :submit_by
      t.string :order_taker
      t.string :confirm_by
      t.string :status
      t.string :designer
      t.string :p_type
      t.string :remark

      t.timestamps
    end
  end
end
