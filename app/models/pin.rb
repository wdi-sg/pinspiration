class Pin < ApplicationRecord
  belongs_to :user
  has_many :comments

  # validates :img_url, format: {with: /\.(png|jpg)\Z/i}
end
