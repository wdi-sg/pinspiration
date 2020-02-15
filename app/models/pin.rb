class Pin < ApplicationRecord
  belongs_to :user
  has_many :comment
  has_and_belongs_to_many :tags
  belongs_to :board, optional: true
end
