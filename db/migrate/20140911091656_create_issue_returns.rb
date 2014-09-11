class CreateIssueReturns < ActiveRecord::Migration
  def change
    create_table :issue_returns do |t|
      t.date :date
      t.string :c_code
      t.integer :qty
      t.string :remark
      t.string :operator

      t.timestamps
    end
  end
end
