class CreateIssueCities < ActiveRecord::Migration
  def change
    create_table :issue_cities do |t|
      t.string :code
      t.string :city
      t.integer :province_id

      t.timestamps
    end
  end
end
