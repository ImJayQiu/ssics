class CreateAdvFinaldesigns < ActiveRecord::Migration
  def change
    create_table :adv_finaldesigns do |t|
      t.integer :request_id
      t.string :upload_by
      t.string :remark

      t.timestamps
    end
  end
end
