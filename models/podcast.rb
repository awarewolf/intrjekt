class Podcast < ActiveRecord::Base

  belongs_to :user
  has_many :posts
  has_many :episodes

  validates :title, presence: true
  validates :description, presence: true
  # validates :image_file_location
  validates :url, format: { with: URI.regexp }, if: Proc.new { |a| a.url.present? }

end
