class Certificate < ActiveRecord::Base

      has_attached_file :document

  validates_attachment :document, content_type: {content_type: ['document/pdf', 'document/doc', 'document/docx', 'document/xls'] }, size: {less_than: 2.megabytes}
end
