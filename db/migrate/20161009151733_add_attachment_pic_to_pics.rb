class AddAttachmentPicToPics < ActiveRecord::Migration
  def self.up
    change_table :pics do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :pics, :pic
  end
end
