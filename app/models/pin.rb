class Pin < ApplicationRecord
  belongs_to :user
  belongs_to :board, optional: true
  has_many :comments
  has_and_belongs_to_many :tags

  # validates :img_url, format: {with: /\.(png|jpg)\Z/i}
end
