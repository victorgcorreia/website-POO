class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,# :confirmable,
         :recoverable, :rememberable, :validatable
  validates :name, :role, presence: { message: "Campo obrigatório" }
  has_one :owner, inverse_of: :user, dependent: :destroy
  has_one :volunteer, inverse_of: :user, dependent: :destroy
  has_many :pets, inverse_of: :user, dependent: :destroy
  accepts_nested_attributes_for :owner, reject_if: :attributes_blank?, allow_destroy: true
  accepts_nested_attributes_for :volunteer, reject_if: :attributes_blank?, allow_destroy: true

 # accepts_nested_attributes_for :address, :allow_destroy => true, :reject_if => :attributes_blank?

    def attributes_blank?(attrs)
      attrs.except('id').values.all?(&:blank?)
    end

    def username
      return self.email.split('@')[0].capitalize
    end
end
