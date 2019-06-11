class Owner < ApplicationRecord
  belongs_to :user
  has_many :pets, dependent: :destroy

  def name
      return self.user.name
  end

end
