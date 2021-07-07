class Pin < ApplicationRecord
  belongs_to :board, required: false, class_name: 'Board', foreign_key: 'boards_id'
end