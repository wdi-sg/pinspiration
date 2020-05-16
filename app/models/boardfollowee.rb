class Boardfollowee < ApplicationRecord
  # AR classes are singular and capitalized by convention
  belongs_to :user
  has_many :boards

end