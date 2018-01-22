class User < ActiveRecord::Base
  rolify
  has_secure_password :validations => false
  validates :name, :presence =>true
end
