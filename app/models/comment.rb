class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :pin

  validates :body, presence: true, length: { minimum: 8, maximum: 512 }
  validates :user, presence: true
  validates :pin, presence: true
end
