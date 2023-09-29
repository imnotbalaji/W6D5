class Cat < ApplicationRecord
    validates :name, presence: true
    validates :color, presence: true, 
    validates :birth_date, presence: true
    validates :sex, presence: true
end
