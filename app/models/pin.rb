class Pin < ApplicationRecord
  # AR classes are singular and capitalized by convention
  belongs_to :user

end