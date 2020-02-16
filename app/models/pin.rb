class Pin < ApplicationRecord
  belongs_to :user
  has_many :comment
  has_and_belongs_to_many :tags
  belongs_to :board, optional: true

  has_one_attached :url
end
