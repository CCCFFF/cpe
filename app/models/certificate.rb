class Certificate < ActiveRecord::Base
  belongs_to :user
      has_attached_file :document, {
        :url => "/system/certificates/documents/000/000/00:id/original/:basename.pdf"
      }

  validates_attachment :document, content_type: {content_type: ['application/pdf'] }, size: {less_than: 2.megabytes}
end
