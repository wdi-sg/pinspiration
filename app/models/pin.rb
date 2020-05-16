class Pin < ApplicationRecord
      belongs_to :user
      validates :title, presence: true, length: { minimum: 3, maximum: 20 }
      validates :text, presence: true, length: { minimum: 3, maximum: 50 }
      validates :img_url, presence: true, length: { minimum: 5 }

end
