class Pin < ApplicationRecord
  has_many :comment
  belongs_to :user

  def self.order_list(sort_order)
    if sort_order == "title_asc"
      order(title: :asc)
    elsif sort_order == "title_desc"
      order(title: :desc)
    else
      order(created_at: :asc)
    end
  end
end