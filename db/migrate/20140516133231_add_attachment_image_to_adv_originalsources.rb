class AddAttachmentImageToAdvOriginalsources < ActiveRecord::Migration
  def self.up
    change_table :adv_originalsources do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :adv_originalsources, :image
  end
end
