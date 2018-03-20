class Speciality < ActiveRecord::Base
  def self.search(search)
  if search
     where('speciality_name ILIKE ?', "%#{search}%")
  else
    find(:all)
  end
end
end
