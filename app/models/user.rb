class User < ActiveRecord::Base

  validates :email, presence: true, uniqueness: true
 # validates password

  has_many :certificates
  has_many :periods
end
