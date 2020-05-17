class Comment < ApplicationRecord
      belongs_to :user
      belongs_to :pin
      validates :text, presence: true, length: { minimum: 3, maximum: 200 }
end
