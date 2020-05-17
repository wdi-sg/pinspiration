class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attr_writer :login
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true

  def login
    @login || self.username || self.email
  end
         has_many :pins
         has_many :comments
end
