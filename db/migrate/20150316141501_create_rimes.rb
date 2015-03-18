class CreateRimes < ActiveRecord::Migration
  def change
    create_table :rimes do |t|
      t.date :date
      t.float :data1
      t.float :data2
      t.float :data3
      t.float :data4
      t.float :data5

      t.timestamps
    end
  end
end
