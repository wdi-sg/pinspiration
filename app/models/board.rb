class Board < ApplicationRecord
  has_and_belongs_to_many :pins
end