class Agency < ActiveRecord::Base
  extend FriendlyId
  friendly_id :agency_name
  has_many :orders, :dependent => :destroy

  def to_label
    "#{agency_name}"
  end

  def to_s
    "#{agency_name}"
  end

  def self.search search
    where("agency_name || agency_phone_work || agency_phone_work || agency_phone_mobile || agency_email_one || agency_email_two || agency_email_three LIKE ?", "%#{search}%")
  end
end
