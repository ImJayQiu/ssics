class CreateIssueTypes < ActiveRecord::Migration
  def change
    create_table :issue_types do |t|
      t.string :code
      t.string :c_type
      t.string :remark

      t.timestamps
    end
  end
end
