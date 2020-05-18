class Pin < ActiveRecord::Base
  belongs_to :user
  has_many :comment
  has_one :username
end