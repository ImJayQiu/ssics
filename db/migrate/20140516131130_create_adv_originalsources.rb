class CreateAdvOriginalsources < ActiveRecord::Migration
  def change
    create_table :adv_originalsources do |t|
      t.integer :request_id

      t.timestamps
    end
  end
end
