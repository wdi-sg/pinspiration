class Pin < ApplicationRecord
  # AR classes are singular and capitalized by convention
  belongs_to :user


  validates :title, presence: true, length: { minimum: 3, maximum: 40 }
end