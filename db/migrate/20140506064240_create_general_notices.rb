class CreateGeneralNotices < ActiveRecord::Migration
  def change
    create_table :general_notices do |t|
      t.date :date
	  t.string :title
      t.string :notice
      t.string :operator
      t.date :e_date

      t.timestamps
    end
  end
end
