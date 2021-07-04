class Pin < ApplicationRecord
  validates :title, presence: true, length: {minimum: 5}
  validates :image_url, presence: true
end
