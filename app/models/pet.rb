class Pet < ApplicationRecord
  has_one_attached :image
  belongs_to :owner
  has_one :volunteer

    def idade

        idade = (Date.today.year - self.birthdate.year)
        if (Date.today.month < self.birthdate.month) or (Date.today.month == self.birthdate.month and Date.today.day < self.birthdate.day)
            idade -= 1
        end

        return idade
    end

    def idade_mes
        
        return (Date.today.month - self.birthdate.month)%12
    end
end
