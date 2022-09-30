class Victim < ApplicationRecord
    belongs_to :monster
    validates :name, presence: true
end