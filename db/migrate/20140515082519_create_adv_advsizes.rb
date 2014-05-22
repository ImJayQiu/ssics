class CreateAdvAdvsizes < ActiveRecord::Migration
  def change
    create_table :adv_advsizes do |t|
      t.string :code
      t.string :advsize
      t.string :remark

      t.timestamps
    end
  end
end
