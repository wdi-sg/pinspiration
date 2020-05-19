class Board < ApplicationRecord
    validates :title, presence: true, length: { minimum: 3, maximum: 60 }
        validates :description, presence: true, length: { minimum: 10, maximum: 100}

    belongs_to :user
    has_and_belongs_to_many :pins
end
