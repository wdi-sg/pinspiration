class Pin < ApplicationRecord
  belongs_to :user
  belongs_to :board
  has_many :comments

  # validates :img_url, format: {with: /\.(png|jpg)\Z/i}
end
