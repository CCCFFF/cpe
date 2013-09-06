class AddAttachmentDocumentToCertificates < ActiveRecord::Migration
  def self.up
    change_table :certificates do |t|
      t.attachment :document
    end
  end

  def self.down
    drop_attached_file :certificates, :document
  end
end
