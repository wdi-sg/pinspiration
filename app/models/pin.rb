class Pin < ApplicationRecord
    mount_uploader :image_url, ImageUploader
    belongs_to :user
end