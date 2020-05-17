class Comment < ApplicationRecord
  belongs_to :pin
  validates :body, presence: true, length: { maximum: 50}
end