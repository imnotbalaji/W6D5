class Cat < ApplicationRecord
    CAT_COLORS = ['black', 'orange', 'white', 'brown']

    validates :name, presence: true
    validates :color, presence: true, inclusion: { in: CAT_COLORS, message: 'cat color not valid'}
    validates :birth_date, presence: true
    validates :sex, presence: true, inclusion: {in: ['M', 'F'], message: 'sex not valid'}
    validate :birth_date_cannot_be_future

    def self.birth_date_cannot_be_future
        if (birth_date <=> Date.today) != 1
            errors.add(:birth_date, 'birth date cant be in the future')
        end
    end

    def age
        Date.today.year - birth_date.year
    end

end
