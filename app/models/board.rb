class Board < ActiveRecord::Base
  has_and_belongs_to_many :pins
  belongs_to :user
end