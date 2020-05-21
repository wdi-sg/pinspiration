class Board < ApplicationRecord
  belongs_to :user
  has_many :pins

  validates :user, presence: true
end
