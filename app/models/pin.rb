class Pin < ApplicationRecord
    validates :title, presence: true, length: { minimum: 3, maximum: 20 }
    validates :url, presence: true
    has_many :comments, dependent: :destroy
    belongs_to :user
end
