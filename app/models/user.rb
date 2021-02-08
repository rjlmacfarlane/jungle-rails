class User < ActiveRecord::Base
  
  validates :password, presence: true, length: { minimum: 8, maximum: 99 }
  has_secure_password
 
end