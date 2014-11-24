class CreateGeneralIndustries < ActiveRecord::Migration
  def change
    create_table :general_industries do |t|
      t.string :code
      t.string :tname
      t.string :cname
      t.string :ename
      t.string :remark

      t.timestamps
    end
  end
end
