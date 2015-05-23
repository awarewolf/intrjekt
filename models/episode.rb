class Episode < ActiveRecord::Base

  belongs_to :podcast

  validates :number, presence: true, uniqueness: true, numericality: { integer_only: true } #custom validate that it is in sequence?
  validates :title, presence: true
  validates :description, presence: true
  validates :audio_file_location, presence: true
  validates :url, format: { with: URI.regexp }, if: Proc.new { |a| a.url.present? } # not sure if this works

end
