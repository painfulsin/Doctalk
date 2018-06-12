class Speciality < ActiveRecord::Base
  has_many :appointments
  def self.search(search)
  if search
     where('speciality_name ILIKE ?', "%#{search}%")
  else
    find(:all)
  end
end
end
