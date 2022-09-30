class Victim < ApplicationRecord
    has_many :monster, dependent: :destroy, through: :attacks
    validates :name, presence: true
end