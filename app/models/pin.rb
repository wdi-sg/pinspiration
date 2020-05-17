class Pin < ApplicationRecord
      belongs_to :user
      has_many :comments
      validates :title, presence: true, length: { minimum: 3, maximum: 60 }
      validates :text, presence: true, length: { minimum: 3, maximum: 200 }
      validates :img_url, presence: true, length: { minimum: 5 }

end
