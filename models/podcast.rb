class Podcast < ActiveRecord::Base

  belongs_to :user
  has_many :posts
  has_many :episodes

  validates :title, presence: true
  validates :description
  validates :image_file_location
  validates :url

end
