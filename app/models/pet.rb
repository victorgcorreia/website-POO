class Pet < ApplicationRecord
  belongs_to :owner
  has_one :volunteer

end
