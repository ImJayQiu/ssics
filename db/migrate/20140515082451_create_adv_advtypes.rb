class CreateAdvAdvtypes < ActiveRecord::Migration
  def change
    create_table :adv_advtypes do |t|
      t.string :code
      t.string :advtype
      t.string :remark

      t.timestamps
    end
  end
end
