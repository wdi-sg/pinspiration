class Comment < ApplicationRecord
  belongs_to :user, required: false, class_name: 'User', foreign_key: 'users_id'
  belongs_to :pin, required: false, class_name: 'Pin', foreign_key: 'pins_id'

end