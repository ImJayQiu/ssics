class CreateIssueProvinces < ActiveRecord::Migration
  def change
    create_table :issue_provinces do |t|
      t.string :code
      t.string :province
      t.integer :area_id

      t.timestamps
    end
  end
end
