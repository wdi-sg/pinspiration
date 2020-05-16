class Comment < ApplicationRecord
  belongs_to :pin
  belongs_to :user

   def self.order_list(sort_order)
    if sort_order == "recent"
      order(created_at: :desc)
    elsif sort_order == "pin_asc"
      Comment.joins(:pin).order(title: :asc)
    elsif sort_order == "pin_desc"
      Comment.joins(:pin).order(title: :desc)
    else
      order(created_at: :desc)
    end
  end
end