class Comment < ApplicationRecord
  # AR classes are singular and capitalized by convention
  belongs_to :user
  belongs_to :pin
end