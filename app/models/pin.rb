class Pin < ApplicationRecord
  belongs_to :user
  has_many :comment
  belongs_to :board
end
