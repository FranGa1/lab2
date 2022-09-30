class Monster < ApplicationRecord
    # validates :name, presence: true
    validate :no_esta_repe
    has_many :victims, dependent: :destroy, through: :attacks

    def no_esta_repe
        if Monster.exists?(name: name)
            errors.add(:name, message:"El monstruo ya se encuentra en la BD")
        end
    end
end