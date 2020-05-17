class Board < ApplicationRecord
    validates :title, presence: true, length: { minimum: 3, maximum: 60 }
    belongs_to :user
    has_and_belongs_to_many :pins
end
