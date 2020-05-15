class Pin < ApplicationRecord
  has many :comments, dependent: destroy
end