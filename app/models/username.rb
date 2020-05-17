class Comment < ActiveRecord::Base
  belongs_to :user
  has_many :pin
  
end