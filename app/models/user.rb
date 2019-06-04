class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,# :confirmable,
         :recoverable, :rememberable, :validatable
  validates :name, :role, presence: { message: "Campo obrigatório" }
  has_one :owner
  has_one :user
  has_many :pets

  def username
      return self.email.split('@')[0].capitalize
  end

end
