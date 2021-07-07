class Board < ApplicationRecord
  belongs_to :user, required: false, class_name: 'User', foreign_key: 'users_id'
  has_many :pins
end