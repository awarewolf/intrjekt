class User < ActiveRecord::Base

  has_many :podcasts
  has_many :posts
  has_many :votes, as: :votable

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  validates :user_name, presence: true
  validates :password, presence: true
  # validates :date_of_birth, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "Invalid email format" }

  def self.authenticate(email,password)
    return if email.nil? || password.nil?
    find_by(email: email, password: password)
  end

end
