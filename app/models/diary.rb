class Diary < ApplicationRecord

  validates :image, presence: true
  validates :text, presence: true
  validates :date, presence: true

  belongs_to :user
  has_many :tags, through: :diary_tags
  has_many :diary_tags
  has_many :likes
  has_many :comments

end
