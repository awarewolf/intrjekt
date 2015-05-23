class Post < ActiveRecord::Base

  belongs_to :user
  belongs_to :podcast
  has_many :votes

  validates :title, presence: true
  validates :content, presence: true
  validates :time, presence: true

  #Is some sort of uniqueness required on the time (by post)?

  #add some sort of validation to ensure that the time is whithin the duration of the podcast length

end
