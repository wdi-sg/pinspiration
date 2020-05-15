class Pin < ApplicationRecord
  # AR classes are singular and capitalized by convention
  belongs_to :user
  has_many :comment
  has_and_belongs_to_many :boards
  has_and_belongs_to_many :tags
end