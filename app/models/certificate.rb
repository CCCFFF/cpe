class Certificate < ActiveRecord::Base
  belongs_to :user
      has_attached_file :document, {
        :url => "localhost:3000/system/certificate/documents/000/000/001/original/:basename."
      }

  validates_attachment :document, content_type: {content_type: ['application/pdf'] }, size: {less_than: 2.megabytes}
end
