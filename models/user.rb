class User < ActiveRecord::Base

  has_many :podcasts
  has_many :posts
  has_many :votes, through: :posts

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  validates :user_name, presence: true
  # validates :date_of_birth, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "Invalid email format" }

end
