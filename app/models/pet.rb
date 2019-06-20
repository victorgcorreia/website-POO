class Pet < ApplicationRecord
  has_one_attached :image
  belongs_to :owner
  has_one :volunteer

end
