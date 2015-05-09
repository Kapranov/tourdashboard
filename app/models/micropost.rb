class Micropost < ActiveRecord::Base
  extend FriendlyId
  friendly_id :author
  validates :author, presence: true, length: { maximum: 20 }
  validates :email, presence: true, length: { maximum: 25 }
  validates :review, presence: true, length: { maximum: 255 }
end
