class Pin < ApplicationRecord
  belongs_to :user

  validates :img_url, format: {with: /\.(png|jpg)\Z/i}
end
