class User < ActiveRecord::Base
  has_secure_password :validations => false
  validates :name, :presence =>true
end
