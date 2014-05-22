class AddAttachmentFinalToAdvFinaldesigns < ActiveRecord::Migration
  def self.up
    change_table :adv_finaldesigns do |t|
      t.attachment :final
    end
  end

  def self.down
    drop_attached_file :adv_finaldesigns, :final
  end
end
