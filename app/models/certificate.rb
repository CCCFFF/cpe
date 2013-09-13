class Certificate < ActiveRecord::Base
  belongs_to :user

      has_attached_file :document, :styles => { :large => "900x700>" }

  validates_attachment :document, content_type: {content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] }, size: {less_than: 2.megabytes}



end
