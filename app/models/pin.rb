class Pin < ActiveRecord::Base
  belongs_to :user
  has_many :comment
  belongs_to :username
end