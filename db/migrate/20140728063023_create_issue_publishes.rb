class CreateIssuePublishes < ActiveRecord::Migration
  def change
    create_table :issue_publishes do |t|
      t.date :date #publish date
	  t.string :operator

      t.timestamps
    end
  end
end
