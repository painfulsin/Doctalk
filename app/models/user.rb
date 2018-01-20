class User < ActiveRecord::Base


  has_many :issues
  has_many :comments
  has_secure_password :validations => false

  validates :name, presence: true,
            :unless => proc{|u| u.provider.present?}

  validates :username, presence: true,
            uniqueness: true,
            :length => {:minimum => 6, :maximum => 256},
            :format => {:with => /\A[0-9\_\.]*[a-zA-Z]+[0-9\_\.]*\z/ },
            :unless => proc{|u| u.provider.present?}

  validates :email, presence: true,
            uniqueness: true,
            :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i },
            :unless => proc{|u| u.provider.present?}

  validates :password, :presence => true,
            :length => {:minimum => 6},
            :unless => proc{|u| u.provider.present?}

  
end