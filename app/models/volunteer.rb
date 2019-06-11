class Volunteer < ApplicationRecord
  belongs_to :user
  has_many :pets

  def name
      return self.user.name
  end
  
end
