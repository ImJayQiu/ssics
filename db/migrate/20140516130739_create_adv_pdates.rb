class CreateAdvPdates < ActiveRecord::Migration
  def change
    create_table :adv_pdates do |t|
      t.integer :request_id
      t.date :p_date
      t.string :p_layout
      t.string :remark

      t.timestamps
    end
  end
end
