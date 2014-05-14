class CreateIssueAreas < ActiveRecord::Migration
  def change
    create_table :issue_areas do |t|
      t.string :code
      t.string :area
      t.string :remark

      t.timestamps
    end
  end
end
