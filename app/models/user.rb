class User < ActiveRecord::Base
  authenticates_with_sorcery!
  extend FriendlyId
  friendly_id :username

  validates :password, length: { minimum: 6 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true
end
